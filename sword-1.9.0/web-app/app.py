#!/usr/bin/env python3
from flask import Flask, request, render_template
import subprocess
import os
from bs4 import BeautifulSoup

app = Flask(__name__)

# List of available modules and Bible books
AVAILABLE_MODULES = ["AKJV", "KJV", "KJVA", "Aleppo", "NETtext", "WLC", "YLT", "OSHB"]

BIBLE_BOOKS = [
    "Genesis", "Exodus", "Leviticus", "Numbers", "Deuteronomy",
    "Joshua", "Judges", "Ruth", "1 Samuel", "2 Samuel",
    "1 Kings", "2 Kings", "1 Chronicles", "2 Chronicles",
    "Ezra", "Nehemiah", "Esther", "Job", "Psalms", "Proverbs",
    "Ecclesiastes", "Song of Solomon", "Isaiah", "Jeremiah",
    "Lamentations", "Ezekiel", "Daniel", "Hosea", "Joel", "Amos",
    "Obadiah", "Jonah", "Micah", "Nahum", "Habakkuk", "Zephaniah",
    "Haggai", "Zechariah", "Malachi",
    "Matthew", "Mark", "Luke", "John", "Acts", "Romans",
    "1 Corinthians", "2 Corinthians", "Galatians", "Ephesians",
    "Philippians", "Colossians", "1 Thessalonians", "2 Thessalonians",
    "1 Timothy", "2 Timothy", "Titus", "Philemon", "Hebrews",
    "James", "1 Peter", "2 Peter", "1 John", "2 John", "3 John",
    "Jude", "Revelation"
]

def get_passage(passage, module):
    """
    Retrieve a passage from the specified Bible module using Diatheke.
    For Hebrew Bible modules, include additional options.
    """
    try:
        if module in ["Aleppo", "WLC", "OSHB"]:
            cmd = [
                "/usr/local/bin/diatheke", "-b", module,
                "-o", "nfmhcvawlsngeixM",  # Additional options for Hebrew modules
                "-f", "OSIS",
                "-k", passage
            ]
        else:
            # For non-Hebrew modules, we still include the same flags to see more data:
            cmd = [
                "/usr/local/bin/diatheke", "-b", module,
                "-o", "nfmhcvawlsngeixM",
                "-k", passage
            ]
        result = subprocess.run(cmd, capture_output=True, text=True, check=True)
        print(result.stdout)  # For debugging
        return result.stdout
    except subprocess.CalledProcessError as e:
        return f"Error retrieving passage: {e.stderr}"

def clean_osis_output(raw_html):
    """
    Clean up the OSIS/HTML output using BeautifulSoup to ensure well-formed markup.
    """
    soup = BeautifulSoup(raw_html, "html.parser")
    # If certain tags cause issues, remove them or transform them here.
    # for tag in soup.find_all("milestone"):
    #     tag.decompose()
    return str(soup)

@app.route("/", methods=["GET", "POST"])
def index():
    """
    Single-version route.
    """
    passage_text = ""
    selected_book = "Genesis"
    passage_input = ""
    module = "AKJV"

    if request.method == "POST":
        passage_input = request.form.get("passage", "")
        selected_book = request.form.get("book", "Genesis")
        module = request.form.get("module", "AKJV")
        full_passage = f"{selected_book} {passage_input}"
        raw_output = get_passage(full_passage, module)
        passage_text = clean_osis_output(raw_output)

    return render_template(
        "index.html",  # Your existing single-view template
        passage_text=passage_text,
        selected_book=selected_book,
        passage_input=passage_input,
        module=module,
        available_modules=AVAILABLE_MODULES,
        bible_books=BIBLE_BOOKS
    )

@app.route("/compare", methods=["GET", "POST"])
def compare():
    """
    Two-version route for side-by-side comparison.
    """
    passage_text1 = ""
    passage_text2 = ""
    selected_book = "Genesis"
    passage_input = ""
    module1 = "AKJV"
    module2 = "AKJV"

    if request.method == "POST":
        passage_input = request.form.get("passage", "")
        selected_book = request.form.get("book", "Genesis")
        module1 = request.form.get("module1", "AKJV")
        module2 = request.form.get("module2", "AKJV")

        full_passage = f"{selected_book} {passage_input}"
        raw_output1 = get_passage(full_passage, module1)
        raw_output2 = get_passage(full_passage, module2)

        passage_text1 = clean_osis_output(raw_output1)
        passage_text2 = clean_osis_output(raw_output2)

    return render_template(
        "compare.html",  # A new template for side-by-side comparison
        passage_text1=passage_text1,
        passage_text2=passage_text2,
        selected_book=selected_book,
        passage_input=passage_input,
        module1=module1,
        module2=module2,
        available_modules=AVAILABLE_MODULES,
        bible_books=BIBLE_BOOKS
    )

if __name__ == "__main__":
    os.environ["LD_LIBRARY_PATH"] = "/usr/local/lib:" + os.environ.get("LD_LIBRARY_PATH", "")
    app.run(debug=True)
