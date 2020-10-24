#!/bin/bash

sudo apt install gnome-tweak-tool
gnome-tweaks

mkdir ~/.local/share/gnome-shell/extensions/
cd ~/.local/share/gnome-shell/extensions/
git clone https://aur.archlinux.org/gnome-shell-extension-workspace-matrix.git
cd gnome-shell-extension-workspace-matrix
makepkg -sri

#window session manager extension
sudo apt install nodejs
node -v
sudo apt install npm
sudo npm install -g linux-window-session-manager
which lwsm
mkdir ~/.local/share/gnome-shell/extensions/lwsm@johannes.super-productivity.com
cd ~/.local/share/gnome-shell/extensions/lwsm@johannes.super-productivity.com
git clone git@github.com:johannesjo/gnome-shell-extension-window-session-manager.git
mv gnome-shell-extension-window-session-manager /home/$(whoami)/.local/share/gnome-shell/extensions/lwsm@johannes.super-productivity.com


