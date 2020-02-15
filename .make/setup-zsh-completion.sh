#!/bin/sh -
repo_completion_dir=$(git rev-parse --show-toplevel)/completion/zsh
home_completion_dir=~/.zsh_completions


# generate a zsh_completions directory
if [ ! -d $home_completion_dir  ]; then
    mkdir $home_completion_dir
fi

# symlink the generated completion file to zsh_completions dir
if [ -e $repo_completion_dir/_note ]; then
  ln -sf $repo_completion_dir/_note $home_completion_dir/_note
else
  echo "zsh completion file does not exist, run 'make generate/zsh-completion' to create it" >&2
fi

# source the zsh_completions dir when starting shell
zshrc_lines=$(cat <<EOF
# zsh command completion
fpath=($home_completion_dir \$fpath)
autoload -U compinit
compinit
EOF
)

printf "$zshrc_lines" >> ~/.zshrc
