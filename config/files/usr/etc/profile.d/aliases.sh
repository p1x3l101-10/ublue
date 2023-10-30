#!/bin/sh
# Use colorful commands
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias ip='ip -c'

# Custom Commands
alias l='ls -l'
alias a='ls -a'
alias la='ls -la'
alias yt='ytfzf -t'
alias ytm='yt -m'
alias nv='nvim'
#alias tor='sudo -u toranon tor'
alias debos='podman run --rm --interactive --tty --device /dev/kvm --user $(id -u) --workdir /recipes --mount "type=bind,source=$(pwd),destination=/recipes" --security-opt label=disable docker.io/godebos/debos:latest'
alias vi='nvim'
alias vim='nvim'
alias ani-cli='ani-cli --dub'
alias xw='env XDG_SESSION_TYPE=x11'
alias butane='podman run --rm --interactive --security-opt label=disable --volume ${PWD}:/pwd --workdir /pwd quay.io/coreos/butane:release'
alias flatpak-builder='flatpak run org.flatpak.Builder'
alias rost='rpm-ostree'
alias pak='flatpak'
pakex(){(
  cd $HOME/Sync/flatpak-backup
  ./pakman $@
)}
alias update='rost update;pak update -y'

# Flatpak apps
alias steam='flatpak run com.valvesoftware.Steam'

# Force Xwayland commands
alias xw='QT_QPA_PLATFORM=xcb'

# Corrections for doas
alias daos='doas'

# Hardcode custom assembler options to cnasm
alias cnasm='nasm -f elf64'

# Style ED - The standard text editor
alias ed='ed -v -p ":"'

# Create userctl
alias userctl='systemctl --user'
