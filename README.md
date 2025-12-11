# News Tower Paper Mover

A simple automation script to help move paper stacks to the Printer Input Module in the News Tower game. This saves you from the tedious task of manually dragging dozens of paper boxes!

## Features

- Simple hotkey-based drag automation
- No complex computer vision - just works!
- Save drop position once, drag multiple papers quickly
- Instant return to pickup position for rapid consecutive drags
- Emergency stop with FAILSAFE

## Installation

### Windows (Easiest Way - Recommended!)

1. **Download** the latest `NewsTowerPaperMover.exe` from [Releases](../../releases)
2. **Double-click** the .exe file to run
3. Done! No Python installation needed!

### For Developers (or other platforms)

1. Make sure you have Python 3.7+ installed

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Run the script:
```bash
python simple_drag.py
```

## Usage

### Quick Start

1. **Set your drop position:**
   - Hover your mouse over the **Printer Input Module** (where you want papers to go)
   - Press **F2** to save this position

2. **Drag papers:**
   - Move your mouse over a paper box at the bottom of the screen
   - Press **F1** - the script will grab it, drag it to the saved position, and return your cursor
   - Repeat for each paper box

3. **Exit:**
   - Press **ESC** to stop the script

### Controls

| Key | Action |
|-----|--------|
| **F2** | Save drop position (where papers should go) |
| **F1** | Pick up item at cursor and drag to saved position |
| **ESC** | Exit script |

### Step-by-Step Workflow

1. Start the script
2. In the game, hover over the Printer Input Module drop zone
3. Press F2 (you'll see "Drop position saved" in console)
4. Move your cursor to the first paper box
5. Press F1 - paper drags to printer and cursor returns
6. Move to next paper box
7. Press F1 again
8. Repeat until all papers are moved!

## Safety Features

- **FAILSAFE**: Move mouse to any screen corner to immediately stop all automation
- **No automatic loops**: You control each drag with F1, so it won't run away on you

## Tips

- The script drags in 0.2 seconds - fast enough to be efficient but slow enough for the game to register
- Cursor returns instantly so you can immediately position for the next paper
- You only need to set the drop position (F2) once per session
- Works at any screen resolution

## Requirements

- Python 3.7+
- Windows (tested on Windows 10/11)
- News Tower game
- Dependencies: pyautogui, keyboard

## Troubleshooting

**Script doesn't respond to F1/F2:**
- Make sure the terminal/console window has focus when you start the script
- The script needs to be running (you should see the controls menu)

**Drag doesn't work in game:**
- The game might need a slightly longer drag duration
- Edit `simple_drag.py` line 41 and increase `duration=0.2` to `duration=0.3`

**Mouse moves but doesn't drag:**
- Ensure you're pressing F1 while hovering directly over a paper box
- The script needs the mouse to be over a draggable item

## License

Free to use and modify for personal use.

## Contributing

Found a bug or want to improve the script? Feel free to open an issue or submit a pull request!
