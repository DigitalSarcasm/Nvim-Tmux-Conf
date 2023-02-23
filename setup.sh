#!/bin/sh
#
#This script sets up my personal nvim and tmux configuration

#install ripgrep, fzf, bat
apt install ripgrep
apt install fzf
apt install bat

#Install nvim and tmux
#TODO install nvim with at least ver 0.8+
apt install nvim
apt install tmux

#install packer (nvim) and tpm (tmux)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#Copy over nvim dir and tmux conf file
if [ ! -d ~/.config ]; then
    mkdir ~/.config
fi

cp -r nvim ~/.config/.
cp .tmux.conf ~/.

#To finalize all this. Run the tpm install command inside tmux
#Then run the packer install command inside nvim
