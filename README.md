# [my](https://lachlankermode.com) dotfiles

Initially inspired/grafted from
[jessfraz/dotfiles](https://github.com/jessfraz/dotfiles), and then updated by
way of [LARBS](https://larbs.xyz) and the [associated
dotfiles](https://github.com/LukeSmithxyz/voidrice).

About the same as [Luke Rice's
setup](https://videos.lukesmith.xyz/videos/watch/f6b78db7-b368-4647-bc64-28c08fff1988),
but with [fish](https://fishshell.com/) as the default shell and [my vim setup](https://github.com/breezykermo/.vim).

# Install 
1. Run the LARBS install script. 
2. Git clone this repo into ~/dotfiles.
3. Git clone [my vim setup](https://github.com/breezykermo/.vim) into .vim and follow the setup instructions there.
4. `sudo pacman -S fish htop bat ctags emacs`
5. `rm -rf ~/.local` and `mv ~/dotfiles/.local ~/.local`
6. `rm -rf ~/.config` and `mv ~/dotfiles/.config ~/.config`
7. `mv ~/dotfiles/.gitconfig ~/.gitconfig`
8. `mv ~/dotfiles/.jupyter ~/.jupyter`
9. `mv ~/dotfiles/.fonts ~/.fonts`

## suckless configs
these are deleted when replacing `.config` above, so need to reclone:
```bash
for REPO in dwm,dmenu,dwmblocks,st
do
    git clone https://github.com/lukesmithxyz/$REPO.git ~/.local/src/$REPO
    cp ~/dotfiles/.local/$REPO.h ~/.local/src/$REPO
    cd ~/.local/src/$REPO
    sudo make install
    cd -
done
