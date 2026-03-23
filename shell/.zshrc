# Main zsh configuration (managed by dotfiles)

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/takumi.wada/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# Volta (Node.js toolchain manager)
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# User local binaries
export PATH="$HOME/.local/bin:$PATH"

# Workspace shortcuts
alias dev="cd ~/dev"
alias airoa="cd ~/dev/airoa"
alias abeja="cd ~/dev/abeja"

# Navigation
alias ..="cd .."
alias ...="cd ../.."

# Git shortcuts
alias gs="git status"
alias gp="git pull"
alias gc="git commit"

# File listing
alias ll="ls -al"

# Prompt
eval "$(starship init zsh)"