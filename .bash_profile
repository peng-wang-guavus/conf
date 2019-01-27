# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc
# Activate bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

# tmux
export EDITOR=vim
export TERM=xterm-256color

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# added by Anaconda3 installer
export PATH="/Users/pengwang/anaconda3/bin:$PATH"

source ~/git-completion.bash
# colors for git
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"
# change git command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"
# default editor
export VISUAL=nvim
export EDITOR="$VISUAL"
