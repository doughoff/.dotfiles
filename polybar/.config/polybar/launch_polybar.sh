#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar_main.log /tmp/polybar_notebook.log
polybar main 2>&1 | tee -a /tmp/polybar_main.log & disown
polybar notebook 2>&1 | tee -a /tmp/polybar_notebook.log & disown

echo "Bars launched..."