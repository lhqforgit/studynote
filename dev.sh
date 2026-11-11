#!/usr/bin/env bash
# dev.sh —— 一键启动开发环境
set -e

SESSION=dev

tmux has-session -t "$SESSION" 2>/dev/null && {
    tmux attach -t "$SESSION"
    exit 0
}

tmux new-session -d -s "$SESSION" -c ~/mydata/mdserver
tmux rename-window -t "$SESSION:0" mdserver
tmux select-window -t "$SESSION:mdserver"
tmux send-keys -t "$SESSION:mdserver.0" '~/.local/bin/te.sh' 'Enter'

tmux new-window -t "$SESSION:1" -n editor -c ~/cloud-drive/quark
tmux new-window -t "$SESSION:2" -n github -c ~/.copilot/repos/studynote





tmux attach -t "$SESSION"
