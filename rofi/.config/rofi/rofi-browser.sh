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
	3)
		$BROWSER -P 
		;;

	*)
		return
		;;
	esac
	echo $SCREENSHOT
)) <<end
1. Default-release
2. Quality
3. Change Default
end