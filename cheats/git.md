
# Git Cheatsheet

## Status & Info
git status
git log --oneline --graph --decorate
git diff
git diff --staged

## Basic Flow
git add .
git commit -m "message"
git push
git pull

## Branch
git branch
git branch -a
git checkout -b new-branch
git switch branch-name
git merge branch-name

## Undo
git restore file
git restore --staged file
git reset --soft HEAD~1
git reset --hard HEAD~1

## Stash
git stash
git stash list
git stash pop
git stash drop
