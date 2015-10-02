. ~/dotfiles/sh/common/init.sh

# git
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '%s : %F{green}%b%f'
zstyle ':vcs_info:*' actionformats '%s : %F{green}%b%f(%F{red}%a%f)'
precmd() { vcs_info }

# prompt
PROMPT='%F{green}%n@%m%f > %F{cyan}%~%f
%?%# '
RPROMPT='${vcs_info_msg_0_}'

# completion
autoload -U compinit
compinit

# color
autoload -U colors
colors

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

# history
export HISTFILE=${HOME}/.zsh_history
# save in a mem
export HISTSIZE=1000
# save in a file
export SAVEHIST=100000

setopt hist_ignore_dups
setopt EXTENDED_HISTORY

setopt APPEND_HISTORY
# for sharing history between zsh processes
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# never ever beep ever
setopt NO_BEEP

# automatically decide when to page a list of completions
LISTMAX=0

# disable mail checking
MAILCHECK=0