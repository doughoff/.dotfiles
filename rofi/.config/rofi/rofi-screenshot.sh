(rofi -dmenu | (read sel;
# OUTDIR=$HOME/Pictures/screenshot/
MAIM=maim
# SCREENSHOT=$OUTDIR/$(date +%F-%T).png
case "${sel%.*}" in
	1)
		# whole screen capture
		$MAIM | xclip -selection clipboard -t image/png
		;;
	2)
		# select region to capture
		$MAIM -s | xclip -selection clipboard -t image/png
		;;
	3)
		# capture active window
		$MAIM -i $(xdotool getactivewindow) | xclip -selection clipboard -t image/png
		;;
	*)
		return
		;;
	esac
)) <<end
1. Whole screen
2. Select region
3. Active window
end