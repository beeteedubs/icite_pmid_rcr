# Fill iCite RCR columns in Excel (for Marshall)

This folder updates **Mean RCR** (column M) and **Weighted RCR** (column N) using PMIDs in column E, via the NIH iCite API.

## What you need

- A Mac
- Internet connection
- The Excel file: `ABA Anesthesiologit Data Extracted.xlsx` (must stay in this folder)

## First time only (~5 minutes)

1. **Install Python** (if you do not already have it):  
   https://www.python.org/downloads/macos/  
   Download the installer and click through with default options.

2. **Run setup:** Double-click  
   **`Setup (first time only).command`**  
   Wait until it says “Setup complete.”

## Every time you want to update RCR columns

1. **Quit Excel** completely (the workbook must not be open).
2. Double-click **`Run iCite RCR.command`**.
3. Press **Enter** when asked (after Excel is closed).
4. Wait until you see **“Finished.”** (Several minutes is normal for all sheets.)
5. Open `ABA Anesthesiologit Data Extracted.xlsx` and review columns **Mean RCR** and **Weighted RCR**.

A backup of the original file is created once as `ABA Anesthesiologit Data Extracted.xlsx.bak`.

## Sheets that are updated

All tabs whose names end with **Clean** (Pain Clean, Cardiac Clean, Critical Care Clean, etc.).

## If something goes wrong

- **“Python 3 is not installed”** → Install Python from the link above, then run Setup again.
- **“First-time setup required”** → Run `Setup (first time only).command` first.
- **Permission / security message** → System Settings → Privacy & Security → allow the script, or right-click the `.command` file → Open.
- **Excel file looks unchanged** → Make sure Excel was closed before running; try again.
- Send Bryan a **screenshot** of the Terminal window if you see red error text.

## For Bryan (Terminal)

```bash
cd marshall_pmid
.venv/bin/python fill_icite_rcr.py --sheet "Pain Clean"   # one sheet
.venv/bin/python fill_icite_rcr.py --all-sheets           # all * Clean sheets
```
