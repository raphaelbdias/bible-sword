#!/usr/bin/env python3
import subprocess
import re
import sys

def get_kjv_passage(passage):
    """
    Retrieves the passage text from the KJV module using Diatheke.
    """
    try:
        # Use Diatheke to retrieve the passage in plain text.
        # Adjust the command if you prefer another output format.
        cmd = ["/usr/local/bin/diatheke", "-b", "KJV", "-o", "plain", "-k", passage]
        result = subprocess.run(cmd, capture_output=True, text=True, check=True)
        return result.stdout.strip()
    except subprocess.CalledProcessError as e:
        print("Error retrieving passage:")
        print("Return code:", e.returncode)
        print("STDOUT:", e.stdout)
        print("STDERR:", e.stderr)
        sys.exit(1)

def search_in_text(text, keyword):
    """
    Searches for the given keyword (case-insensitive) in the text
    and returns all matching lines.
    """
    lines = text.splitlines()
    matches = [line for line in lines if keyword.lower() in line.lower()]
    return matches

def main():
    if len(sys.argv) < 2:
        print("Usage: {} <passage> [keyword]".format(sys.argv[0]))
        sys.exit(1)
    
    # Passage is the first argument (e.g., "Jn 3:16")
    passage = sys.argv[1]
    text = get_kjv_passage(passage)
    
    print("Retrieved Passage:")
    print(text)
    print("\n-----------------------------------\n")
    
    # If a keyword is provided as the second argument, use it;
    # otherwise, prompt the user.
    if len(sys.argv) > 2:
        keyword = sys.argv[2]
    else:
        keyword = input("Enter keyword to search for in the passage: ").strip()
    
    results = search_in_text(text, keyword)
    if results:
        print(f"\nLines containing '{keyword}':")
        for line in results:
            print(line)
    else:
        print(f"\nNo occurrences of '{keyword}' found in the passage.")

if __name__ == "__main__":
    main()
