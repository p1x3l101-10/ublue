#!/bin/sh
# Source Home Manager stuff if it exists
if [ -e $HOME/.nix-profile/etc/profile.d/hm-session-vars.sh ]; then
	source $HOME/.nix-profile/etc/profile.d/hm-session-vars.sh
fi

# Add ~/.local/bin to the path
export XDG_BIN_HOME="$HOME/.local/bin"
export PATH="$XDG_BIN_HOME:$PATH"

# Set default programs
export EDITOR='ex'
export VISUAL='vi'
export PAGER='less'
