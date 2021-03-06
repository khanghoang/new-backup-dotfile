#!/bin/sh

link() {
  if [ -h $2 ]; then
    echo "symlink $2 already exists, skipping"
    return
  fi

  if [ -e $2 ]; then
    echo "file $2 already exists, moving to ${2}.backup"
    mv $2 ${2}.backup
  fi

  echo "ln -s $1 $2"
  ln -s $1 $2
}

link ~/dotfiles/.tigrc ~/.tigrc
link ~/dotfiles/.ctags ~/.ctags
link ~/dotfiles/.newsboat ~/.newsboat
link ~/dotfiles/.gitignore ~/.gitignore
link ~/dotfiles/.gitignore ~/.gitignore
link ~/dotfiles/.ctags ~/.ctags
link ~/dotfiles/.tmux.conf ~/.tmux.conf
link ~/dotfiles/.zshrc ~/.zshrc
link ~/dotfiles/.gitconfig ~/.gitconfig
link ~/dotfiles/.npmrc ~/.npmrc
