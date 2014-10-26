#!/bin/sh

dotfiles_link() {
  for file in *; do
    if [[ "$file" != "LICENSE" && "$file" != "README.md" && "$file" != "bootstrap.sh" ]]; then
      echo "Linking $(pwd)/$file -> $HOME/.$file"
      ln -s $(pwd)/$file $HOME/.$file
    fi
  done
}

dotfiles_unlink() {
  for file in *; do
    if [[ "$file" != "LICENSE" && "$file" != "README.md" && "$file" != "bootstrap.sh" ]]; then
      echo "Unlinking $HOME/.$file"
      rm $HOME/.$file
    fi
  done
}

if [ "$1" == "link" ]; then
  dotfiles_link
elif [ "$1" == "unlink" ]; then
  dotfiles_unlink
else
  echo "usage: $0 <command>"
  echo ""
  echo "Commands are:"
  echo "  link    Link dotfiles in home directory"
  echo "  unlink  Remove linked files"
fi
