#!/bin/bash

dir=$(pwd)
olddir=$dir/dotfiles_old

files="
  .bash_profile
  .bash_logout
  .bashrc
  .zlogin
  .zprofile
  .profile
  .zshrc
  .gitconfig
  .var/app/com.visualstudio.code/config/Code/User/settings.json
  .var/app/com.visualstudio.code/config/Code/User/keybindings.json
  .gh-completion.sh
  .fonts
"

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/$file $olddir
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/$file
done