#!/usr/bin/env bash

export PATH=~/anaconda3/bin:$PATH
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export KUBECONFIG=/home/f.silvestre/.bluemix/plugins/container-service/clusters/SmartPASI/kube-config-dal10-SmartPASI.yml
alias ku=kubectl
complete -F __start_kubectl ku
export AIRFLOW_HOME=/home/f.silvestre/Documents/Projects/Data-engineering-nanodegree/4_dend_airflow_data_pipelines/P5_Data_Pipelines

# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac

alias todo='go-for-it'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias jmeter='/home/f.silvestre/apache-jmeter-5.1.1/bin/jmeter'
alias joplin='joplin --profile ~/.config/joplin-desktop/'

SPARK_HOME=/usr/local/spark
export PATH=$SPARK_HOME/bin:$PATH

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth
export HISTIGNORE="&:ls:[bf]g:pwd:exit:cd .."


# Path to the bash it configuration
export BASH_IT="/home/f.silvestre/.bash_it"

# Lock and Load a custom theme file.
# Leave empty to disable theming.
# location /.bash_it/themes/
export BASH_IT_THEME='brainy'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@github.globant.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Uncomment this to make Bash-it create alias reload.
# export BASH_IT_RELOAD_LEGACY=1

# Load Bash It
source "$BASH_IT"/bash_it.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/f.silvestre/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/f.silvestre/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/f.silvestre/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/f.silvestre/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source ~/bash-wakatime/bash-wakatime.sh

source /usr/share/undistract-me/long-running.bash
notify_when_long_running_commands_finish_install

