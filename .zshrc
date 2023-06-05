export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="nanotech"
ZSH_TMUX_AUTOSTART=true

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
autoload -U compinit; compinit

source $ZSH/oh-my-zsh.sh

plugins=(
  git
  tmux
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias lg="lazygit"
alias rr="rm -r"
alias xvlc="exec vlc"


