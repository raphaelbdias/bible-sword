#!/usr/bin/env python3
from flask import Flask, request, render_template
import subprocess
import os

# Ensure LD_LIBRARY_PATH includes /usr/local/lib
os.environ["LD_LIBRARY_PATH"] = "/usr/local/lib:" + os.environ.get("LD_LIBRARY_PATH", "")

app = Flask(__name__)

# Fixed list of modules; you could later populate this dynamically
AVAILABLE_MODULES = ["KJV", "KJVA","Aleppo", "NETtext", "WLC", "YLT"]

def get_passage(passage, module):
    """
    Retrieve a passage from the specified Bible module using Diatheke,
    requesting HTML output for rich formatting.
    """
    try:
        cmd = ["/usr/local/bin/diatheke", "-b", module, "-o", "HTML", "-k", passage]
        result = subprocess.run(cmd, capture_output=True, text=True, check=True)
        print(result.stdout)
        return result.stdout.strip()
    except subprocess.CalledProcessError as e:
        return f"<p>Error retrieving passage: {e.stderr}</p>"

def search_in_text(text, keyword):
    """
    Search for lines containing the keyword (case-insensitive) in the given text.
    Returns a list of matching lines.
    """
    lines = text.splitlines()
    matches = [line for line in lines if keyword.lower() in line.lower()]
    return matches

@app.route("/", methods=["GET", "POST"])
def index():
    passage = ""
    module = "KJV"
    keyword = ""
    passage_text = ""
    search_results = []
    if request.method == "POST":
        passage = request.form.get("passage", "")
        module = request.form.get("module", "KJV")
        keyword = request.form.get("keyword", "")
        passage_text = get_passage(passage, module)
        if keyword:
            search_results = search_in_text(passage_text, keyword)
    return render_template("index.html", passage=passage, module=module,
                           keyword=keyword, passage_text=passage_text,
                           search_results=search_results,
                           available_modules=AVAILABLE_MODULES)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
