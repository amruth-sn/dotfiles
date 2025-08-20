#!/bin/bash
# fix_symlinks.sh
# Replace symlinks in repo with actual file contents

set -euo pipefail

for file in zshrc p10k.zsh; do
  if [ -L "$file" ]; then
    target=$(readlink "$file")
    echo "Replacing symlink $file → $target with actual file contents"
    rm "$file"
    # copy the file content to repo file
    cp "$target" "$file"
  else
    echo "$file is not a symlink, skipping"
  fi
done

