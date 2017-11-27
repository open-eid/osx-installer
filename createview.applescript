tell application "Finder"
	tell disk "Open-EID"
		open
		set current view of container window to icon view
		set toolbar visible of container window to false
		set statusbar visible of container window to false
		set the bounds of container window to {400, 100, 850, 530}
		set theViewOptions to the icon view options of container window
		set arrangement of theViewOptions to snap to grid
		set icon size of theViewOptions to 100
		set text size of theViewOptions to 16
		set background picture of theViewOptions to file "background.png"
		update without registering applications
		delay 5
		close
	end tell
end tell