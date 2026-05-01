# Enable colors for macOS ls
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Enable colored grep
export GREP_OPTIONS='--color=auto'

# zsh color support
autoload -U colors && colors

# Common color variables (for prompt or scripts)
BLACK='%F{black}'
RED='%F{red}'
GREEN='%F{green}'
YELLOW='%F{yellow}'
BLUE='%F{blue}'
MAGENTA='%F{magenta}'
CYAN='%F{cyan}'
WHITE='%F{white}'
RESET='%f'