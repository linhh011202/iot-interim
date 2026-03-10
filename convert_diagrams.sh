#!/bin/bash

# Diagram conversion script using mermaid-cli
# This script converts all .mmd files in the diagrams/ folder to PNG images

echo "Converting Mermaid diagrams to images..."

# Check if mmdc is installed
if ! command -v mmdc &> /dev/null; then
    echo "Error: mermaid-cli (mmdc) is not installed."
    echo "Please install it with: npm install -g @mermaid-js/mermaid-cli"
    exit 1
fi

# Create images directory if it doesn't exist
mkdir -p images

# Create puppeteer config to allow running in sandboxed environments
PUPPETEER_CONFIG=$(mktemp /tmp/puppeteer-config-XXXX.json)
cat > "$PUPPETEER_CONFIG" << 'PCONFIG'
{
  "args": ["--no-sandbox", "--disable-setuid-sandbox", "--disable-gpu"]
}
PCONFIG

# Use bundled puppeteer chrome if no system browser found
CHROME_PATH=$(find ~/.cache/puppeteer -name "chrome" -type f 2>/dev/null | head -1)
if [ -n "$CHROME_PATH" ]; then
    echo '{"executablePath": "'"$CHROME_PATH"'", "args": ["--no-sandbox", "--disable-setuid-sandbox", "--disable-gpu"]}' > "$PUPPETEER_CONFIG"
fi

# Convert each .mmd file to PNG
for file in diagrams/*.mmd; do
    if [ -f "$file" ]; then
        filename=$(basename "$file" .mmd)
        echo "Converting $filename..."
        mmdc -i "$file" -o "images/${filename}.png" -w 1600 -b white --puppeteerConfigFile "$PUPPETEER_CONFIG"
    fi
done

rm -f "$PUPPETEER_CONFIG"

echo "Conversion complete! Images saved to images/"
