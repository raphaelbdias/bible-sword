#!/bin/bash
# install_module.sh
# Usage: ./install_module.sh <module_zip_file>
# Example: ./install_module.sh KJV.zip

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <module_zip_file>"
    exit 1
fi

MODULE_ZIP="$1"
TMP_DIR=$(mktemp -d)
echo "Extracting $MODULE_ZIP to $TMP_DIR..."
unzip -q "$MODULE_ZIP" -d "$TMP_DIR"

# Find the configuration file (assume it's in a mods.d folder)
CONFIG_FILE=$(find "$TMP_DIR" -maxdepth 2 -type f -name "*.conf" | head -n 1)
if [ -z "$CONFIG_FILE" ]; then
    echo "No configuration file found in $MODULE_ZIP."
    rm -rf "$TMP_DIR"
    exit 1
fi
echo "Found configuration file: $CONFIG_FILE"

# Copy the configuration file to the SWORD mods.d directory.
sudo mkdir -p /usr/local/share/sword/mods.d
sudo cp "$CONFIG_FILE" /usr/local/share/sword/mods.d/
echo "Configuration file installed to /usr/local/share/sword/mods.d/"

# Read the DataPath from the config file; default to "./modules/texts" if not found.
DATA_PATH=$(grep -i "^DataPath" "$CONFIG_FILE" | cut -d'=' -f2 | tr -d '[:space:]')
if [ -z "$DATA_PATH" ]; then
    DATA_PATH="./modules/texts"
    echo "DataPath not specified in config; defaulting to $DATA_PATH"
else
    echo "DataPath from config: $DATA_PATH"
fi

# Remove leading './' if present
DATA_PATH=${DATA_PATH#./}

# Determine the target directory based on the DataPath.
TARGET_DIR="/usr/local/share/sword/$DATA_PATH"
echo "Target module data directory: $TARGET_DIR"

# Find the module data directory in the extracted zip.
# Try common locations: either directly under modules/texts or under texts.
MODULE_DATA_DIR=$(find "$TMP_DIR" -type d -path "*/modules/texts/*" | head -n 1)
if [ -z "$MODULE_DATA_DIR" ]; then
    MODULE_DATA_DIR=$(find "$TMP_DIR" -type d -path "*/texts/*" | head -n 1)
fi

if [ -z "$MODULE_DATA_DIR" ]; then
    echo "Module data directory not found in $MODULE_ZIP."
    rm -rf "$TMP_DIR"
    exit 1
fi
echo "Found module data directory: $MODULE_DATA_DIR"

# Create the target directory and copy the data.
sudo mkdir -p "$TARGET_DIR"
sudo cp -r "$MODULE_DATA_DIR"/* "$TARGET_DIR/"
echo "Module data files copied to $TARGET_DIR."

# Clean up temporary directory.
rm -rf "$TMP_DIR"

echo "Module installation complete."
echo "Run 'diatheke -b system -k modulelistnames' to verify installed modules."
