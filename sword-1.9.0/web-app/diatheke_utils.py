#!/usr/bin/env python3
import subprocess
import os

# Ensure the diatheke binary finds its libraries
os.environ["LD_LIBRARY_PATH"] = "/usr/local/lib:" + os.environ.get("LD_LIBRARY_PATH", "")

def run_diatheke(passage, module, search_type=None):
    """
    Run the diatheke command with given parameters.
    If search_type is provided, the "-s" flag is used.
    """
    # Base command with options. Adjust the options string if needed.
    cmd = [
        "/usr/local/bin/diatheke",
        "-b", module,
        "-f", "OSIS",
        "-o", "nfmhcvawlsngeixM"  # Common output options.
    ]
    if search_type:
        cmd.extend(["-s", search_type])
    cmd.extend(["-k", passage])
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, check=True)
        return result.stdout
    except subprocess.CalledProcessError as e:
        return f"Error retrieving passage: {e.stderr}"

def get_passage_by_verse(passage, module):
    """Retrieve a passage by verse reference (default mode)."""
    return run_diatheke(passage, module)

def get_passage_multiword(passage, module):
    """Retrieve a passage using a multiword search."""
    return run_diatheke(passage, module, "multiword")

def get_passage_phrase(passage, module):
    """Retrieve a passage using a phrase search."""
    return run_diatheke(passage, module, "phrase")

def get_passage_regex(passage, module):
    """Retrieve a passage using a regex search."""
    return run_diatheke(passage, module, "regex")
