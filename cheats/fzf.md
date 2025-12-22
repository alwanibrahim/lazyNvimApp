
# fzf Cheatsheet

## Basic
fzf
ls | fzf
rg --files | fzf

## Preview
fzf --preview 'bat --style=numbers {}'

## Git
git status | fzf
git branch | fzf

## Kill Process
ps aux | fzf | awk '{print $2}' | xargs kill

## Keybind
Ctrl+j / Ctrl+k    # move
Enter              # select
Esc                # cancel
