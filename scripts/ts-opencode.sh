#!/bin/bash
# Start tmux with opencode in timesheet-android folder

cd ~/Developer/timesheet-android

# Start caffeinate if not running
if ! pgrep -x "caffeinate" > /dev/null; then
    caffeinate -s &
    echo "Started caffeinate"
fi

# Start or attach to tmux session with opencode
SESSION="timesheet"

if tmux has-session -t $SESSION 2>/dev/null; then
    tmux attach -t $SESSION
else
    tmux new -s $SESSION "opencode"
fi
