tell application "System Preferences"
  quit -- to skip UI animations (to work faster)
  -- do not `activate` before revealing anchor, since it would trigger an animation, slowing down the script
  reveal anchor "keyboardTab" of pane "com.apple.preference.keyboard"
end tell

tell application "System Events" to tell window "Keyboard" of process "System Preferences"
  repeat until checkbox 3 of tab group 1 exists
    delay 0.1
  end repeat

  tell its tab group 1
    click checkbox 3
  end tell
end tell

tell application "System Preferences" to quit -- later, we can implement returning to previous System Preferences tab, but that sounds like overkill
