#!/bin/bash
# One-time setup: create Python environment and install packages.
set -e
cd "$(dirname "$0")"

echo "=== iCite RCR setup (first time only) ==="
echo ""

if ! command -v python3 &>/dev/null; then
    echo "Python 3 is not installed."
    echo "Install it from https://www.python.org/downloads/macos/"
    echo "Then run this script again."
    exit 1
fi

echo "Using: $(python3 --version)"
echo "Creating virtual environment in .venv ..."
python3 -m venv .venv

echo "Installing packages ..."
.venv/bin/pip install -q --upgrade pip
.venv/bin/pip install -q -r requirements.txt

echo ""
echo "Setup complete. You can now double-click:"
echo "  Run iCite RCR.command"
echo ""
