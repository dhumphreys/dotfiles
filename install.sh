#!/bin/bash

# find current dotfile directory
DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# install required programs
sudo apt-get install \
  compton \
  dropbox \
  feh \
  fonts-font-awesome \
  fonts-hack-ttf \
  i3 \
  i3blocks \
  powerline \
  rfkill \
  vim \
  wicd \
  xbacklight

# change default settings for bluetooth power management
gsettings set org.blueman.plugins.powermanager auto-power-on false

# link config directories to dotfiles checkout
ln -s $DOTFLIES/i3 $HOME/.config/i3
ln -s $DOTFLIES/i3blocks $HOME/.config/i3blocks

# link common folders to Dropbox
ln -s $HOME/Dropbox/Documents $HOME/Documents
ln -s $HOME/Dropbox/Photos $HOME/Pictures
ln -s $HOME/Dropbox/Music $HOME/Music
ln -s $HOME/Dropbox/Videos $HOME/Videos
