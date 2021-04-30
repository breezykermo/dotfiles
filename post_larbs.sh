#!/usr/bin/env bash

# FIRST SET UP SSH KEY CONNECTED TO MY GITHUB

DOTFILES=$(pwd)

# essentials
cd ~
sudo pacman -S fish tmux xorg-xrandr lazygit ctags bat htop nodejs npm firefox emacs github-cli
sudo pacman -S docker docker-openrc
sudo rc-update add docker
sudo usermod -aG docker $USER

# work
yay -S slack-desktop
yay -S miniconda3
yay -S dropbox-cli
# TODO: comment out line in config.fish according to where it was installed


# fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install edc/bass

rm -rf $DOTFILESgit clone git@github.com:breezykermo/dotfiles.git

# config folders
for fld in ".config" ".local/bin"
do
	rm -rf ~/$fld
	cp -r $DOTFILES/$fld ~/$fld
done

# suckless
for pg in st dmenu dwm dwmblocks
do
	rm ~/.local/$pg/config.h
	cp $DOTFILES/.local/$pg.h ~/.local/src/$pg/config.h
	cd ~/.local/src/$pg && sudo make install && cd -
done

# other files
for fle in ".gitconfig" ".gitignore"
do
	rm ~/$fle
	cp $DOTFILES/$fle ~/$fle
done

# vim
rm -rf ~/.vim
git clone git@github.com:breezykermo/.vim.git
cd ~/.vim && git submodule update --init && cd -
cd ~/.vim/bundle/coc.nvim && npm install && cd -
rm -rf ~/.local/share/nvim
rm -rf ~/.config/nvim
mkdir ~/.config/nvim
cat ~/.vim/init.vim.template >> ~/.config/nvim/init.vim

# emacs
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
rm -rf ~/.doom.d
git clone git@github.com:breezykermo/.doom.d ~/.doom.d
~/.emacs.d/bin/doom sync

# shell config
# chsh -s `which fish`
# sed -i "s/caps:super/ctrl:nocaps/g" ~/.local/bin/remaps
