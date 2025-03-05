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
        # print(result.stdout)  # For debugging
        return result.stdout
    except subprocess.CalledProcessError as e:
        return f"Error retrieving passage: {e.stderr}"

def parse_range(passage_input):
    """
    Parse a free-text passage input into a dictionary with keys:
      start_chapter, start_verse, end_chapter, end_verse
    The input may be:
      - "5"              => full chapter (start_verse and end_verse remain None)
      - "5:2"            => single verse
      - "5:1-5:6"        => range in one chapter
      - "5:3-6:4"        => range spanning multiple chapters
      - "5-6"            => multi-chapter range with no specific verses
    """
    # Remove any surrounding whitespace
    passage_input = passage_input.strip()
    if "-" in passage_input:
        start_part, end_part = passage_input.split("-", 1)
    else:
        # If there's no dash, treat it as a single reference.
        start_part = end_part = passage_input

    def parse_ref(ref):
        # Try to match something like "5:2" or just "5"
        m = re.match(r"(\d+)(?::(\d+))?", ref.strip())
        if m:
            return m.group(1), m.group(2)  # chapter, verse (verse can be None)
        return None, None

    start_ch, start_v = parse_ref(start_part)
    end_ch, end_v = parse_ref(end_part)

    return {
        "start_chapter": start_ch,
        "start_verse": start_v,
        "end_chapter": end_ch,
        "end_verse": end_v
    }

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
        
        # Parse the input into a range dictionary.
        rng = parse_range(passage_input)
        # print("DEBUG: Parsed range:", rng)
        
        # Convert chapter and verse numbers to integers when possible.
        try:
            start_ch = int(rng["start_chapter"])
        except (TypeError, ValueError):
            start_ch = None
        try:
            end_ch = int(rng["end_chapter"]) if rng["end_chapter"] else start_ch
        except (TypeError, ValueError):
            end_ch = start_ch

        # Build a regex pattern that captures verses with named groups:
        # It assumes OSIS outputs verses like "Genesis 5:31:" etc.
        pattern = rf"(?P<header>{selected_book}\s+(?P<chapter>\d+):(?P<verse>\d+):\s*)(?P<content>.*?)(?=(?:{selected_book}\s+\d+:\d+:)|$)"
        # print("DEBUG: Using pattern:", pattern)
        matches = re.findall(pattern, osis_text, re.DOTALL)
        # print("DEBUG: Found", len(matches), "matches")
        
        for match in matches:
            header, chapter_str, verse_str, content = match
            try:
                chapter_num = int(chapter_str)
                verse_num = int(verse_str)
            except ValueError:
                continue
            # Filter based on the requested range:
            include = False
            if start_ch is not None and end_ch is not None:
                if chapter_num < start_ch or chapter_num > end_ch:
                    include = False
                elif chapter_num == start_ch and rng["start_verse"]:
                    if verse_num >= int(rng["start_verse"]):
                        include = True
                elif chapter_num == end_ch and rng["end_verse"]:
                    if verse_num <= int(rng["end_verse"]):
                        include = True
                else:
                    # For chapters strictly between start and end, include all verses.
                    if start_ch < chapter_num < end_ch:
                        include = True
                    # Also, if no start_verse/end_verse was specified, include the whole chapter.
                    if not rng["start_verse"] and not rng["end_verse"]:
                        include = True

            if include:
                verse_ref = header.strip().rstrip(":")
                passage_dict[verse_ref] = content.strip()
    
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
