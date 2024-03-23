set -g fish_greeting

if status --is-login
end
if status is-interactive
end


zoxide init fish | source



export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$PATH:$HOME/.turso:$PATH"
export PATH="$PATH:$HOME/go/bin:$PATH"
export PATH="$PATH:$HOME/.cargo/env"
