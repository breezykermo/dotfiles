# Post LARBS

# FIRST SET UP SSH KEY CONNECTED TO MY GITHUB
DOTFILES=~/dotfiles

# essentials
cd ~
sudo pacman -S fish tmux lazygit ctags bat htop nodejs npm \
	docker docker-openrc
sudo rc-update add docker
sudo usermod -aG docker $USER

rm -rf $DOTFILESgit clone git@github.com:breezykermo/dotfiles.git

# config folders
for fld in ".config" ".local/bin" ".local/share"
do
	rm -rf ~/$fld
	cp -r $DOTFILES/$fld ~/$fld
done

# suckless
for pg in st dmenu dwm dwmblocks
do
	rm ~/.local/$pg/config.h
	cp $DOTFILES/.local/$pg.h ~/.local/src/$pg/config.h
	cd $DOTFILES/src/$pg && sudo make install && cd -
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

# shell config
# chsh -s `which fish`
# sed -i "s/caps:super/ctrl:nocaps/g" ~/.local/bin/remaps
