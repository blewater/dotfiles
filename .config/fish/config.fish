set -Ux LC_CTYPE en_US.UTF-8
set -Ux LC_ALL en_US.UTF-8
set -Ux LANG en_US.UTF-8

set fish_function_path $fish_function_path ~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/fish
powerline-setup

if status is-interactive 
and not set -q TMUX
    exec tmux
end

alias ls='ls -laFh'
alias ll='ls -alFh'
alias la='ls -AFh'
alias l='ls -CF'
alias vi='vim'
alias s0='shutdown -r +0'
export EDITOR=vim

source ~/.iterm2_shell_integration.(basename $SHELL)
alias config='/usr/bin/git --git-dir=/Users/user/.config/ --work-tree=/Users/user'
