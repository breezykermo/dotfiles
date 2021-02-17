# Macs

Mac is a necessary evil, still. You can configure it nicely with the following:

- [yabai](https://github.com/koekeishiya/yabai), a tiling window manager.
- [skhd](https://github.com/koekeishiya/skhd), a hotkey daemon.
- [kitty](https://sw.kovidgoyal.net/kitty/), a terminal emulator.
- [qutebrowser](https://qutebrowser.org/) - a vim-like browser.
- [Alfred](https://www.alfredapp.com/) - full-featured replacement for quick opens covered by dmenu.
- `brew install lf`, for terminal-based file manager. 
- `brew install lazygit`, for terminal-based git manager. 
- [Fantastique Sans Mono](https://github.com/belluzj/fantasque-sans), the font.

## Install
1. Install each from the links above. Requires brew and a basic dev setup.

```bash
cp yabai/.yabairc ~/.yabairc
cp skhd/.skhdrc ~/.skhdrc
cp kitty/kitty.conf ~/.config/kitty/kitty.conf
cp qutebrowser/config.py ~/.qutebrowser/config.py
cp ../.config/lf/* ~/.config/lf/
```

In 'Alfred', double-click on each of the workflows to install.

2. Copy [desktop image](https://raw.githubusercontent.com/breezykermo/dotfiles/master/.local/share/thiemeyer_road_to_samarkand.jpg) to Pictures, set as background.
3. Setup apps:
- vim / nvim
- DEVONthink
- [Flux](https://justgetflux.com/news/pages/macquickstart/)
- Dropbox (for syncing pkb and DT)
- ProtonVPN
- mac-emacs (with doom setup. Use in terminal by running `emacs -nw`)

4. Rebind [caps lock to control](https://stackoverflow.com/questions/127591/using-caps-lock-as-esc-in-mac-os-x), and likely some other native settings..

## Inspiration
This setup is inspired partly by LARBS and Luke Smith's dotfiles, as per my linux setup, and then on the mac side from [koekeishiya/dotfiles](https://github.com/koekeishiya/dotfiles). These two devs wrote the grunt of the software that makes this possible.
