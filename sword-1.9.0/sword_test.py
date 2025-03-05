import ctypes
from ctypes import c_char_p, c_void_p
import os

# Ensure LD_LIBRARY_PATH includes /usr/local/lib
os.environ["LD_LIBRARY_PATH"] = "/usr/local/lib:" + os.environ.get("LD_LIBRARY_PATH", "")

# Load the Sword library.
# Adjust the library name or path if necessary.
libsword = ctypes.CDLL("libsword.so")

# Define function prototypes for the Sword API.

# SWModule_open(const char *modname, const char *options) returns a pointer (SWModule*)
libsword.SWModule_open.argtypes = [c_char_p, c_char_p]
libsword.SWModule_open.restype = c_void_p

# SWKey_new(const char *keyStr) returns a pointer (SWKey*)
libsword.SWKey_new.argtypes = [c_char_p]
libsword.SWKey_new.restype = c_void_p

# SWModule_lookup(SWModule *module, SWKey *key) returns a char*
libsword.SWModule_lookup.argtypes = [c_void_p, c_void_p]
libsword.SWModule_lookup.restype = c_char_p

# SWKey_free(SWKey *key)
libsword.SWKey_free.argtypes = [c_void_p]
libsword.SWKey_free.restype = None

# SWModule_close(SWModule *module)
libsword.SWModule_close.argtypes = [c_void_p]
libsword.SWModule_close.restype = None

def main():
    # Module name and passage to look up.
    mod_name = b"KJV"         # Change to your desired module name (as a bytes literal)
    passage_key = b"John 3:16" # Change to the passage or key you want

    # Open the module.
    module = libsword.SWModule_open(mod_name, None)
    if not module:
        print("Error: Could not open module '{}'.".format(mod_name.decode()))
        return

    # Create a key for the passage.
    key = libsword.SWKey_new(passage_key)
    if not key:
        print("Error: Could not create key for passage '{}'.".format(passage_key.decode()))
        libsword.SWModule_close(module)
        return

    # Look up the passage.
    result = libsword.SWModule_lookup(module, key)
    if result:
        print("Passage for {}:\n{}".format(passage_key.decode(), result.decode('utf-8')))
    else:
        print("No text found for {}.".format(passage_key.decode()))

    # Clean up.
    libsword.SWKey_free(key)
    libsword.SWModule_close(module)

if __name__ == "__main__":
    main()
