#!/bin/zsh
cp ./git/.gitignore ~/.gitignore
cp ./zsh/.zshrc ~/.zshrc
git config --global core.excludesfile ~/.gitignore
mkdir -p ~/.config/claude
cp ./claude/CLAUDE.md ~/.config/claude/CLAUDE.md

if [ ! -d ~/Developer/jira-tickets ]; then
  git clone https://github.com/itsandreramon/jira-tickets.git ~/Developer/jira-tickets
fi