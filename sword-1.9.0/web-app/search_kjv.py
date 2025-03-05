#!/usr/bin/env python3
import re
import subprocess
import os
from flask import Flask, request, render_template
from bs4 import BeautifulSoup

app = Flask(__name__)

os.environ["LD_LIBRARY_PATH"] = "/usr/local/lib:" + os.environ.get("LD_LIBRARY_PATH", "")

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
                "-o", "nfmhcvawlsngeixM",  # Options for Hebrew modules
                "-f", "OSIS",
                "-k", passage
            ]
        else:
            cmd = [
                "/usr/local/bin/diatheke", "-b", module,
                "-f", "OSIS",
                "-o", "nfmhcvawlsngeixM",
                "-k", passage
            ]
        result = subprocess.run(cmd, capture_output=True, text=True, check=True)
        print(result.stdout)
        return result.stdout
    except subprocess.CalledProcessError as e:
        return f"Error retrieving passage: {e.stderr}"

@app.route("/", methods=["GET", "POST"])
def index():
    passage_dict = {}
    selected_book = "Genesis"
    passage_input = ""
    module = "AKJV"

    if request.method == "POST":
        passage_input = request.form.get("passage", "1")
        selected_book = request.form.get("book", "Genesis")
        module = request.form.get("module", "KJV")
        full_passage = f"{selected_book} {passage_input}"
        osis_text = get_passage(full_passage, module)
        
        # Build a regex pattern to capture verses.
        # This example assumes the OSIS output formats verses as "Genesis 1:1:" etc.
        pattern = rf"({selected_book} 1:\d+:\s*)(.*?)(?=({selected_book} 1:\d+:)|$)"
        matches = re.findall(pattern, osis_text, re.DOTALL)
        
        for match in matches:
            # Clean the verse reference and its content.
            verse_ref = match[0].strip().rstrip(":")  # e.g., "Genesis 1:1"
            verse_content = match[1].strip()
            passage_dict[verse_ref] = verse_content

    return render_template(
        "index.html",
        passage_dict=passage_dict,
        selected_book=selected_book,
        passage_input=passage_input,
        module=module,
        available_modules=AVAILABLE_MODULES,
        bible_books=BIBLE_BOOKS
    )

if __name__ == "__main__":
    app.run(debug=True)
