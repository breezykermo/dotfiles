# dotfiles

heavily inspired/grafted from [jessfraz/dotfiles](https://github.com/jessfraz/dotfiles).

see [breezykermo/.vim](https://github.com/breezykermo/.vim) for vim config.
This should work with both vim and nvim.

I typically use a [fish shell](https://fishshell.com/). 


# setup
```
cp -sf .Xresources $HOME/.Xresources
cp -sf .aliases $HOME/.aliases 
cp .bashrc $HOME/.bashrc
cp .gitconfig $HOME/.gitconfig
cp .tmux.conf $HOME/.tmux.conf
alias use_monitor='bash ~/dotfiles/use-monitor.sh'
alias use_native='bash ~/dotfiles/use-native.sh'
# if using i3..
mkdir $HOME/.config/i3
cp i3/config $HOME/.config/i3/config
```
