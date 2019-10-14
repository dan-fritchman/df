
BANNER="##########################################"
echo $BANNER
echo "# Loading ${HOME}/.bash_profile"
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


# Terminal Prompt 
# No idea how I figured how to do this 
export PS1="$(tput bold)[\h][\W]$(tput sgr0) $ "

# Bind-keys to enable partial history search
#  via up & down keys
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

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
export PATH=$PATH:${HOME}/.npm/bin/:${HOME}/.cargo/bin
##export PATH=$PATH:/Users/dan/bin/
##export PYTHONPATH="${PYTHONPATH}:/Users/dan/bin/:${HOME}/dev/"

# SSH Servers
##alias ss='ssh -Y -C name@server.com' 

# MATLAB Command-Line
#  Note 'MATLAB.app' is a symlink to some latest version
##alias mlab='/Applications/MATLAB.app/bin/maci64/MATLAB -nodisplay'

# Conda
CONDA_SH=${HOME}/miniconda3/etc/profile.d/conda.sh
if [ -f ${CONDA_SH} ]; then source ${CONDA_SH};
else echo "No conda.sh found"; fi

export HW21_SECRETS_FILE="${HOME}/HW21/dev/hw21/secrets.sh"

##export PATH="/usr/local/opt/icu4c/bin:$PATH"
##export PATH="/usr/local/opt/icu4c/sbin:$PATH"

# From NVM 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# From Visual Studio Code 
##export PATH="/usr/local/opt/ruby/bin:$PATH"
##export PATH="$HOME/.cargo/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dan/google-cloud-sdk/path.bash.inc' ]; then . '/Users/dan/google-cloud-sdk/path.bash.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/dan/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/dan/google-cloud-sdk/completion.bash.inc'; fi



export PATH="$HOME/.cargo/bin:$PATH"
