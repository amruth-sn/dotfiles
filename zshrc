# ---------------------------
# Powerlevel10k instant prompt
# ---------------------------
if [[ -r /Users/amruth/.cache/p10k-instant-prompt-amruth.zsh ]]; then
  source /Users/amruth/.cache/p10k-instant-prompt-amruth.zsh
fi

# ---------------------------
# Oh My Zsh setup
# ---------------------------
export ZSH=/Users/amruth/.oh-my-zsh
ZSH_THEME=powerlevel10k/powerlevel10k

# Plugins (make sure these are installed)
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Source Oh My Zsh
source /Users/amruth/.oh-my-zsh/oh-my-zsh.sh

# ---------------------------
# Powerlevel10k config
# ---------------------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ---------------------------
# History
# ---------------------------
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS

# ---------------------------
# Completion
# ---------------------------
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '%F{green}%d%f'

# ---------------------------
# Aliases
# ---------------------------
alias ll='ls -la'
alias gs='git status'
alias gp='git pull'
alias gc='git commit'
alias clr='clear'

export JAVA_HOME=/opt/homebrew/opt/openjdk@17
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH="$ANDROID_HOME/platform-tools:$PATH"

# bun completions
[ -s "/Users/amruth/.bun/_bun" ] && source "/Users/amruth/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
