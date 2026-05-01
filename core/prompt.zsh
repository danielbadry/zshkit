autoload -Uz vcs_info

# Enable git info
precmd() { vcs_info }

# Git styles
zstyle ':vcs_info:git:*' formats ' (%b)'
zstyle ':vcs_info:git:*' actionformats ' (%b|%a)'

# Enable variable in prompt
setopt PROMPT_SUBST

# Prompt
PROMPT='${GREEN}%n${RESET} at ${CYAN}%m${RESET} in ${YELLOW}%~${RESET}${MAGENTA}${vcs_info_msg_0_}${RESET}
${BLUE}➜${RESET} '