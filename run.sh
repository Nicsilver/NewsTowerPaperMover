#!/bin/bash

echo "================================================"
echo "  News Tower Paper Mover"
echo "================================================"
echo ""
echo "Starting automation script..."
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "ERROR: Python 3 is not installed"
    echo "Install with: sudo apt install python3 python3-pip"
    exit 1
fi

# Check if dependencies are installed
if ! python3 -c "import pyautogui, keyboard" 2> /dev/null; then
    echo "Installing dependencies..."
    pip3 install --user -r requirements.txt
    if [ $? -ne 0 ]; then
        echo ""
        echo "ERROR: Failed to install dependencies"
        echo "Try manually: pip3 install --user pyautogui keyboard"
        exit 1
    fi
fi

# Run the script
python3 simple_drag.py

if [ $? -ne 0 ]; then
    echo ""
    echo "ERROR: Script failed to run"
    echo ""
    echo "Note: On Linux, you may need to run with sudo:"
    echo "  sudo python3 simple_drag.py"
    echo ""
fi
