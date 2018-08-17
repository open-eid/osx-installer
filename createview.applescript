tell application "Finder"
	tell disk "Open-EID"
		open
		tell container window
			set current view to icon view
			set toolbar visible to false
			set statusbar visible to false
			set the bounds to {400, 100, 850, 530}
		end tell
		set theViewOptions to the icon view options of container window
		tell theViewOptions
			set arrangement to snap to grid
			set icon size to 100
			set text size to 16
		set background picture to file "background.png"
		end tell
		update without registering applications
		delay 5
		close
	end tell
end tell