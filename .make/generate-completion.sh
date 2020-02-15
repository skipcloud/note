#/bin/sh -
completion_dir=$(git rev-parse --show-toplevel)/completion/zsh

cat $completion_dir/completion-template | \
  sed -e "s,NOTE_DIR,${NOTES_DIR:-$HOME/.notes},g" -e '2i # This is a generated file' \
  > $completion_dir/_note
