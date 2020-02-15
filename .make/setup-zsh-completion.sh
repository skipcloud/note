#!/bin/sh -
repo_completion_dir=$(git rev-parse --show-toplevel)/completion/zsh

# symlink the generated completion file to site-functions
if [ -e $repo_completion_dir/_note ]; then
  echo Creating symlink in /usr/local/share/zsh/site-functions...
  sudo ln -sf $repo_completion_dir/_note /usr/local/share/zsh/site-functions
else
  echo "zsh completion file does not exist, run 'make generate/zsh-completion' to create it" >&2
fi
