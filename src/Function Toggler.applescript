tell application "System Preferences" to quit -- to skip UI animations (to work faster)
tell application "System Preferences"
	reveal anchor "keyboardTab" of pane "com.apple.preference.keyboard"
end tell
delay 0.2 -- instead of getting loading state
tell application "System Events" to tell process "System Preferences"
	click checkbox 3 of tab group 0 of window 1
end tell
tell application "System Preferences" to quit -- later, we can implement returning to previous System Preferences tab, but that sounds like overkill
