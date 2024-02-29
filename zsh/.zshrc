
#
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="nanotech"
# ZSH_TMUX_AUTOSTART=true

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt nomatch
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/bieniucieniu/.zshrc'

autoload -Uz compinit
compinit



source $ZSH/oh-my-zsh.sh

plugins=(
    git
    tmux
    zsh-autosuggestions
    zsh-syntax-highlighting
)


alias lg="lazygit"
alias rr="rm -r"
alias xvlc="exec vlc"
alias rf="rm -rf"
alias l="ls -lh"
alias nrd="nr dev"


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

export PATH="/home/bieniucieniu/.local/share/bob/nvim-bin:$PATH"

eval "$(zoxide init zsh)"

# Lines configured by zsh-newuser-install
# End of lines added by compinstall

# bun completions
[ -s "/home/bieniucieniu/.bun/_bun" ] && source "/home/bieniucieniu/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$PATH:$HOME/.turso:$PATH"
export PATH="$PATH:$HOME/go/bin:$PATH"
export PATH="$PATH:$HOME/.cargo/env"




# Load Angular CLI autocompletion.
source <(ng completion script)
