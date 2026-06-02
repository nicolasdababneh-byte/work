# Run this script from the repository root to install Python and create a virtual environment.
# Requires winget and administrator privileges for the Python install.

# Install Python 3 if not already installed
winget install --id Python.Python.3 -e --accept-package-agreements --accept-source-agreements

# Create a virtual environment in .venv
py -3 -m venv .venv

# Activate the environment for this session
Write-Host 'To activate the environment, run:'
Write-Host '  .\.venv\Scripts\Activate.ps1'

# Install dependencies if requirements.txt exists
if (Test-Path .\requirements.txt) {
    .\.venv\Scripts\python.exe -m pip install --upgrade pip
    .\.venv\Scripts\python.exe -m pip install -r requirements.txt
}
