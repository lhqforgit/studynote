shell:
	tmux new -s <session_name>
	tmux new -A -s <session_name>
	tmux ls
	tmux a
	tmux a -t wor <session_name>
	tmux a -d -t <session_name>
