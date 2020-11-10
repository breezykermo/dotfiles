# dotfiles

heavily inspired/grafted from [jessfraz/dotfiles](https://github.com/jessfraz/dotfiles).

see [breezykermo/.vim](https://github.com/breezykermo/.vim) for vim config.
This should work with both vim and nvim.

I typically use a [fish shell](https://fishshell.com/). 


# setup
```
ln -s $(pwd)/.Xresources $HOME/.Xresources
ln -s $(pwd)/.aliases $HOME/.aliases 
ln -s $(pwd)/.bashrc $HOME/.bashrc
ln -s $(pwd)/.gitconfig $HOME/.gitconfig
ln -s $(pwd)/.tmux.conf $HOME/.tmux.conf

# if using i3..
mkdir $HOME/.config/i3
ln -s $(pwd)/i3/config $HOME/.config/i3/config
```
