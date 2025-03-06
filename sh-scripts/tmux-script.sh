#!/bin/bash

SESSION_NAME=$(basename "$PWD")

# Restore tmux sessions if needed

# Check if the session already exists
if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
    echo "Attaching to existing session: $SESSION_NAME"
    tmux attach-session -t "$SESSION_NAME"
    exit 0
fi

# Create a new session if it doesn't exist
echo "Creating new session: $SESSION_NAME"
tmux new-session -d -s "$SESSION_NAME" -c "$PWD"
tmux send-keys -t "$SESSION_NAME:1" "nvim ." C-m
tmux new-window -t "$SESSION_NAME:2" -n "terminal" -c "$PWD"

# Set the first window (nvim) to be the active window
tmux select-window -t "$SESSION_NAME:1"

tmux attach-session -t "$SESSION_NAME"

# alias for tmux script add this code in zshrc or bashrc and uncomment the alias
# alias ts="$HOME/tmux-script.sh"

