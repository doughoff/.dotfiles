#!/bin/sh
(rofi -dmenu | (read sel;
BROWSER=firefox
case "${sel%.*}" in
	1)
		notify-send "Not implemented yet"
		;;
	2)
		# whole screen capture
		systemctl reboot
		;;
	3)
		# select region to capture
		systemctl poweroff
		;;
	*)
		return
		;;
	esac
)) <<end
1. Lock Screen
2. Reboot
3. Poweroff
end