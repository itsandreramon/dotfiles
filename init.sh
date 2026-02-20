#!/bin/zsh
cp ./git/.gitignore ~/.gitignore
cp ./zsh/.zshrc ~/.zshrc
git config --global core.excludesfile ~/.gitignore
mkdir -p ~/.config/claude
cp ./claude/CLAUDE.md ~/.config/claude/CLAUDE.md