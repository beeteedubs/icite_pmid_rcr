#!/bin/bash
# Double-click in Finder to fill Mean RCR and Weighted RCR columns.
set -e
cd "$(dirname "$0")"

echo "=========================================="
echo "  iCite RCR — fill Excel columns M and N"
echo "=========================================="
echo ""
echo "IMPORTANT: Close the Excel file before continuing."
echo ""
read -r -p "Press Enter when Excel is closed (or Ctrl+C to cancel)... "
echo ""

if [[ ! -d .venv ]]; then
    echo "First-time setup required."
    echo "Double-click: Setup (first time only).command"
    echo ""
    read -r -p "Press Enter to close..."
    exit 1
fi

if [[ ! -f "ABA Anesthesiologit Data Extracted.xlsx" ]]; then
    echo "ERROR: ABA Anesthesiologit Data Extracted.xlsx not found in this folder."
    read -r -p "Press Enter to close..."
    exit 1
fi

echo "Processing all specialty sheets (Pain, Cardiac, etc.)..."
echo "This may take several minutes. Do not close this window."
echo ""

.venv/bin/python fill_icite_rcr.py --all-sheets

echo ""
echo "Finished. Open the Excel file and check columns Mean RCR and Weighted RCR."
echo ""
read -r -p "Press Enter to close..."
