"""
Simple Paper Drag Automation
F2 = Save drop position (where to drag TO)
F1 = Pick up item and drag to saved position
ESC = Exit
"""

import pyautogui
import keyboard
import time

# Safety settings
pyautogui.FAILSAFE = True
pyautogui.PAUSE = 0.05

# Saved positions
drop_position = None

def save_drop_position():
    """F2 - Save the current mouse position as drop target"""
    global drop_position
    drop_position = pyautogui.position()
    print(f"Drop position saved: {drop_position}")

def drag_to_saved_position():
    """F1 - Pick up from current position and drag to saved drop position"""
    global drop_position

    if drop_position is None:
        print("ERROR: No drop position saved! Press F2 first to set drop location.")
        return

    # Save current position (pickup position)
    pickup_position = pyautogui.position()
    print(f"Picking up from: {pickup_position}")

    # Press mouse button down (grab)
    pyautogui.mouseDown()

    # Drag to drop position - slightly slower so game registers it
    pyautogui.moveTo(drop_position[0], drop_position[1], duration=0.2)

    # Release mouse button (drop)
    pyautogui.mouseUp()

    print(f"Dropped at: {drop_position}")

    # Move back to pickup position - instant
    pyautogui.moveTo(pickup_position[0], pickup_position[1])

    print(f"Returned to: {pickup_position}\n")

def main():
    print("=" * 50)
    print("  Simple Paper Drag Automation")
    print("=" * 50)
    print("\nControls:")
    print("  F2  - Save drop position (hover over printer, press F2)")
    print("  F1  - Drag from current position to saved position")
    print("  ESC - Exit script")
    print("\nInstructions:")
    print("1. Hover your mouse over the Printer Input Module")
    print("2. Press F2 to save that position")
    print("3. Move mouse over a paper box")
    print("4. Press F1 to drag it to the saved position")
    print("5. Repeat step 3-4 for each paper box")
    print("\nScript is running... waiting for hotkeys")
    print("=" * 50)

    # Set up hotkeys
    keyboard.add_hotkey('f2', save_drop_position)
    keyboard.add_hotkey('f1', drag_to_saved_position)

    # Wait for ESC to exit
    keyboard.wait('esc')

    print("\nExiting...")

if __name__ == "__main__":
    main()
