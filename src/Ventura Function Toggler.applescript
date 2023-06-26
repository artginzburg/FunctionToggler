-- Huge thanks to this thread: https://www.macscripter.net/t/ventura-system-preferences-scripts/73870/6
-- Even bigger thanks to Script Debugger app.


-- # Constants

set DELAY_AFTER_CLOSING_MODAL to 0.2
set DELAY_AFTER_REVEALING_PANE to 1 -- without this much of a delay, telling window "Keyboard" will result in an error, probably because the animation hadn't completed yet.
set DELAY_AFTER_OPENING_MODAL to 0.2
set DELAY_AFTER_TRIGGERING_CHECKBOX to 0.8

-- # Functions

on closeModalIfOpened()
  set KEYCODES_ESCAPE to 53

  tell application "System Events"
    -- If modal is opened
    if exists (sheet 1 of window 1 of process "System Settings") then
      tell application "System Events"
        -- Press 'esc' key
        key code KEYCODES_ESCAPE
      end tell
    end if
  end tell
end closeModalIfOpened

on clickKeyboardShortcutsButton()
  tell application "System Events"
    tell its application process "System Settings"
      tell its window "Keyboard"
        tell its group 1
          tell its splitter group 1
            tell its group 2
              tell its group 1
                tell its scroll area 1
                  tell its group 2
                    button 1 click
                  end tell
                end tell
              end tell
            end tell
          end tell
        end tell
      end tell
    end tell
  end tell
end clickKeyboardShortcutsButton

on switchToFunctionKeysTabOfKeyboardShortcutsModal()
  tell application "System Events"
    tell application process "System Settings"
      tell window 1
        keystroke "fun"
      end tell
    end tell
  end tell
end switchToFunctionKeysTabOfKeyboardShortcutsModal

on toggleFunctionKeysBehavior()
  tell application "System Events"
    tell its application process "System Settings"
      tell its window "Keyboard"
        tell its sheet 1
          tell its group 1
            tell its splitter group 1
              tell its group 2
                tell its scroll area 1
                  tell its group 1
                    checkbox "Use F1, F2, etc. keys as standard function keys" click
                  end tell
                end tell
              end tell
            end tell
          end tell
        end tell
      end tell
    end tell
  end tell
end toggleFunctionKeysBehavior

-- # Execution

activate application "System Settings"

closeModalIfOpened()

delay DELAY_AFTER_CLOSING_MODAL

tell application "System Settings" to reveal pane "keyboard"

delay DELAY_AFTER_REVEALING_PANE

clickKeyboardShortcutsButton()

delay DELAY_AFTER_OPENING_MODAL

switchToFunctionKeysTabOfKeyboardShortcutsModal()

toggleFunctionKeysBehavior()

delay DELAY_AFTER_TRIGGERING_CHECKBOX

closeModalIfOpened()

close window 1 of application "System Settings"
