# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'

# File system
if command -v eza &> /dev/null; then
  # alias ls='eza -lh --group-directories-first --icons=auto'
  # alias ll='eza -aghl --icons --git --total-size'
  alias ll='eza -aghl --icons --git'
  # alias lsa='ls -a'
  # alias lt='eza --tree --level=2 --long --icons --git'
  # alias lta='lt -a'
fi

# alias ff="fzf --preview 'bat --style=numbers --color=always {}'"

# if command -v zoxide &> /dev/null; then
#   alias cd="zd"
#   zd() {
#     if [ $# -eq 0 ]; then
#       builtin cd ~ && return
#     elif [ -d "$1" ]; then
#       builtin cd "$1"
#     else
#       z "$@" && printf "\U000F17A9 " && pwd || echo "Error: Directory not found"
#     fi
#   }
# fi

# open() {
#   xdg-open "$@" >/dev/null 2>&1 &
# }

# Directories
# alias ..='cd ..'
# alias ...='cd ../..'
# alias ....='cd ../../..'
alias m='cd ~/mydotfiles'

# Tools
alias cat='bat'
# alias d='docker'
# alias r='rails'
# n() { if [ "$#" -eq 0 ]; then nvim .; else nvim "$@"; fi; }

# Git
# alias g='git'
alias gs='git status'
alias gf='git fetch'
# alias gcm='git commit -m'
alias gam='git commit -a -m'
# alias gca='git commit -a --amend'
