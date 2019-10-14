
BANNER="##########################################"
echo $BANNER
echo "# Loading ${HOME}/.profile"
echo $BANNER

# General terminal stuff
export EDITOR=vim
alias ls='ls -hpG'
alias ll='ls -alhpG'
alias la='ls -alhpG'
alias h='history'
alias t='top'
alias e='exit'
alias c='clear'
alias g='grep'
alias vi='vim'
alias v='vim'

# tmux
alias tmns='tmux new -s '
alias tma='tmux attach '
alias tmat='tmux attach -t '
alias tmas='tmux attach -t '
alias tmst='tmux switch -t '
alias tmss='tmux switch -t '
alias tmll='tmux ls '
alias tmls="tmux ls -F '#{session_name}'"
alias tmd='tmux detach '
alias tmk='tmux kill-session -t '
alias tmks='tmux kill-session -t '

# screen
##alias scrnns   = 'screen -S '
##alias scrnS    = 'scrnns'
##alias scrnls   = 'screen -ls '
##alias scrna    = 'screen -x '
##alias scrnx    = 'scrna'
##alias scrnas   = 'screen -r '
##alias scrnr    = 'scrnas'
##alias scrnAS   = 'screen -dRR '
##alias scrndRR  = 'scrnAS'

# Path Additions


# Cargo
export PATH="$HOME/.cargo/bin:$PATH"
# NPM 
export PATH=$PATH:${HOME}/.npm/bin/:${HOME}/.cargo/bin


# Env

export HW21_SECRETS_FILE="${HOME}/HW21/dev/hw21/secrets.sh"


