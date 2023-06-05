export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="nanotech"
# ZSH_TMUX_AUTOSTART=true

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
alias rf="rm -rf"


# pnpm
export PNPM_HOME="/home/bieniucieniu/.local/share/pnpm"
case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
# fnm
export PATH="/home/bieniucieniu/.local/share/fnm:$PATH"

eval "$(fnm env --use-on-cd)"
