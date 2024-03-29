set -Ux LC_CTYPE en_US.UTF-8
set -Ux LC_ALL en_US.UTF-8
set -Ux LANG en_US.UTF-8
set -Ux GOPATH $HOME/go
set -Ux ERL_AFLAGS "-kernel shell_history enabled"

defaults write -g ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain KeyRepeat -int 1

set -g theme_nerd_fonts yes
set -g theme_display_git_ahead_verbose yes
set -g theme_git_worktree_support yes
set -g theme_display_virtualenv no
set -g theme_display_ruby no
set -g theme_display_user yes
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_date_format "+%a %b %-d %H:%M"
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g default_user your_normal_user
set -g fish_prompt_pwd_dir_length 0
#set -g theme_project_dir_length 1

if status is-interactive 
and not set -q TMUX
    exec tmux
end

alias l='ls -alFhG'
alias la='ls -AFhG'
alias lc='ls -CFG'
alias vi='vim'
alias s0='shutdown -r +0'
alias d=docker
alias dc=docker-compose
export EDITOR=vim

git config --global color.ui true
git config --global core.pager 'less -r'

alias config='/usr/bin/git --git-dir=/Users/user/.config/ --work-tree=/Users/user'

