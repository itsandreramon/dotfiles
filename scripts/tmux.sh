#!/bin/bash
# start tmux with opencode in specified folder

FOLDER="${1:-$(pwd)}"
SESSION=$(basename "$FOLDER")

cd "$FOLDER" || exit 1

# start caffeinate if not running
if ! pgrep -x "caffeinate" > /dev/null; then
    caffeinate -s &
    echo "started caffeinate"
fi

# start or attach to tmux session with opencode
if tmux has-session -t "$SESSION" 2>/dev/null; then
    tmux attach -t "$SESSION"
else
    tmux new -s "$SESSION" "opencode"
fi
