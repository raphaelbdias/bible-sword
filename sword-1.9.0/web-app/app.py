#!/usr/bin/env python3
from flask import Flask, request, render_template
import subprocess
import os

# Ensure LD_LIBRARY_PATH includes /usr/local/lib
os.environ["LD_LIBRARY_PATH"] = "/usr/local/lib:" + os.environ.get("LD_LIBRARY_PATH", "")

app = Flask(__name__)

# Define available modules and a static list of Bible books.
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
    For Hebrew Bible modules (Aleppo, WLC, OSHB), we include the specific option
    filters (nfmhcvaplsrbwgeiM) and output format flag (-f OSIS).
    For other modules, we use a simpler command.
    """
    try:
        if module in ["Aleppo", "WLC", "OSHB"]:
            # Hebrew Bible modules: use the full set of optional filters.
            cmd = [
                "/usr/local/bin/diatheke", "-b", module,
                "-o", "nfmhcvaplsrwgeixM",
                "-f", "OSIS",
                "-k", passage
            ]
        else:
            # Default command for other modules.
            cmd = ["/usr/local/bin/diatheke", "-b", module, "-o","OSIS", "-k", passage]
        result = subprocess.run(cmd, capture_output=True, text=True, check=True)
        print(result.stdout)  # Debug output
        print(result.stderr)  # Debug output
        return result.stdout
    except subprocess.CalledProcessError as e:
        return f"<p>Error retrieving passage: {e.stderr}</p>"

def search_in_text(text, keyword):
    """
    Searches for lines containing the keyword (case-insensitive).
    Returns a list of matching lines.
    """
    lines = text.splitlines()
    return [line for line in lines if keyword.lower() in line.lower()]

@app.route("/", methods=["GET", "POST"])
def index():
    passage = ""
    module = "AKJV"
    keyword = ""
    passage_text = ""
    selected_book = "Genesis"  # default book
    search_results = []

    if request.method == "POST":
        passage = request.form.get("passage", "")
        module = request.form.get("module", "AKJV")
        keyword = request.form.get("keyword", "")
        selected_book = request.form.get("book", "Genesis")
        # Construct the full passage reference by combining the book with the user-entered chapter and verse.
        full_passage = f"{selected_book} {passage}"
        passage_text = get_passage(full_passage, module)
        if keyword:
            search_results = search_in_text(passage_text, keyword)

    return render_template(
        "index.html",
        passage=passage,
        module=module,
        keyword=keyword,
        passage_text=passage_text,
        search_results=search_results,
        available_modules=AVAILABLE_MODULES,
        bible_books=BIBLE_BOOKS,
        selected_book=selected_book
    )

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
