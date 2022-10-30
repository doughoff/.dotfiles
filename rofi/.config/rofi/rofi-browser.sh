#!/bin/sh
(rofi -dmenu | (read sel;
BROWSER=firefox
case "${sel%.*}" in
	1)
		# whole screen capture
		$BROWSER -P default-release
		;;
	2)
		# select region to capture
		$BROWSER -P Quality
		;;

	*)
		return
		;;
	esac
	echo $SCREENSHOT
)) <<end
1. Default-release
2. Quality
end