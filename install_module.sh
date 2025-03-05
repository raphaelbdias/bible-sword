#!/bin/bash
# install_module.sh
# Usage: ./install_module.sh <module_zip_file>
# Example: ./install_module.sh Aleppo.zip

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <module_zip_file>"
    exit 1
fi

MODULE_ZIP="$1"
TMP_DIR=$(mktemp -d)
echo "Extracting $MODULE_ZIP to $TMP_DIR..."
if ! unzip -q "$MODULE_ZIP" -d "$TMP_DIR"; then
    echo "Error extracting $MODULE_ZIP."
    rm -rf "$TMP_DIR"
    exit 1
fi

# Locate the configuration file (assumed to be in a mods.d folder).
CONFIG_FILE=$(find "$TMP_DIR" -type f -path "*/mods.d/*.conf" | head -n 1)
if [ -z "$CONFIG_FILE" ]; then
    echo "No configuration file found in $MODULE_ZIP."
    rm -rf "$TMP_DIR"
    exit 1
fi
echo "Found configuration file: $CONFIG_FILE"

# Install the configuration file to /usr/local/share/sword/mods.d.
sudo mkdir -p /usr/local/share/sword/mods.d
sudo cp "$CONFIG_FILE" /usr/local/share/sword/mods.d/
echo "Configuration file installed to /usr/local/share/sword/mods.d/"

# Read the DataPath from the configuration file; if not found, deduce it.
DATA_PATH=$(grep -i "^DataPath" "$CONFIG_FILE" | cut -d'=' -f2 | tr -d '[:space:]')
if [ -z "$DATA_PATH" ]; then
    MODULE_DATA_DIR=$(find "$TMP_DIR" -type d -path "*/modules/texts/*" | head -n 1)
    if [ -z "$MODULE_DATA_DIR" ]; then
        MODULE_DATA_DIR=$(find "$TMP_DIR" -type d -path "*/texts/*" | head -n 1)
    fi
    if [ -z "$MODULE_DATA_DIR" ]; then
        echo "Module data directory not found in $MODULE_ZIP."
        rm -rf "$TMP_DIR"
        exit 1
    fi
    DATA_PATH="${MODULE_DATA_DIR#$TMP_DIR/}"
    echo "DataPath not specified in config; using extracted structure: $DATA_PATH"
else
    echo "DataPath from config: $DATA_PATH"
fi

# Normalize the DATA_PATH: remove leading './' and trailing '/'
DATA_PATH=${DATA_PATH#./}
DATA_PATH=${DATA_PATH%/}

TARGET_DIR="/usr/local/share/sword/$DATA_PATH"
echo "Target module data directory: $TARGET_DIR"

# Find the module data directory in the extracted zip.
SOURCE_DIR=$(find "$TMP_DIR" -type d -path "*/$DATA_PATH" | head -n 1)
if [ -z "$SOURCE_DIR" ]; then
    echo "Could not find source module data directory corresponding to DataPath: $DATA_PATH"
    rm -rf "$TMP_DIR"
    exit 1
fi
echo "Found source module data directory: $SOURCE_DIR"

sudo mkdir -p "$TARGET_DIR"
sudo cp -r "$SOURCE_DIR"/* "$TARGET_DIR/"
echo "Module data files copied to $TARGET_DIR."

rm -rf "$TMP_DIR"
echo "Temporary files removed."

echo "Module installation complete."
echo "Run 'diatheke -b system -k modulelistnames' to verify installed modules."
