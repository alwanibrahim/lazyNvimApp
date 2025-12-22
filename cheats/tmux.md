
# tmux Cheatsheet

## Session
tmux
tmux new -s name
tmux ls
tmux attach -t name
tmux kill-session -t name

## Prefix
Prefix = Ctrl+b

## Window
Prefix + c        # new window
Prefix + n        # next window
Prefix + p        # prev window
Prefix + &        # kill window

## Pane
Prefix + %        # split vertical
Prefix + "        # split horizontal
Prefix + o        # next pane
Prefix + x        # kill pane
Prefix + z        # zoom pane

## Misc
Prefix + d        # detach
