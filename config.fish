set fish_greeting
xset r rate 220 40
setxkbmap -option ctrl:nocaps
alias tmux='env TERM=screen-256color-bce tmux'

# GO paths
set -gx PATH /usr/local/go/bin $PATH
set -gx PATH /home/lachlan/go/bin $PATH

# python
set -gx PATH /home/lachlan/.local/bin $PATH

# npm
set -gx PATH /home/lachlan/.npm-global/bin $PATH

# blender
set -gx PATH /home/lachlan/lib/blender $PATH

# rust
source ~/.cargo/env

# conda
source /sata/miniconda/etc/fish/conf.d/conda.fish
