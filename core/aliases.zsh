# Smart ls (prefer exa if available)
if command -v exa >/dev/null 2>&1; then
  alias ls='exa -lah --icons --group-directories-first'
  alias ll='exa -lh --icons'
  alias la='exa -lah --icons'
else
  alias ls='ls -alG'
  alias ll='ls -alG'
  alias la='ls -A'
fi

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Git shortcuts
alias g='git'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'

# Safety
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Clear
alias c='clear'