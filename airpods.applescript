activate application "SystemUIServer"
tell application "System Events"
	tell process "SystemUIServer"
		set btMenu to (menu bar item 1 of menu bar 1 whose description contains "bluetooth")
		tell btMenu
			click
			tell (menu item "<YOUR_AIRPODS_NAME>" of menu 1)
				click
				if exists menu item "Connect" of menu 1 then
					click menu item "Connect" of menu 1
					return "Connecting..."
				else
					if exists menu item "Disconnect" of menu 1 then
						click menu item "Disconnect" of menu 1
						return "Disconnecting..."
					else
						click btMenu
						return "Connect menu was not found, are you already connected?"
					end if
				end if
			end tell
		end tell
	end tell
end tell