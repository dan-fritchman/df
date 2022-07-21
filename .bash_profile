
# Test for login shell 
##if shopt -q login_shell; then
# Test for an interactive shell
if [ "$PS1" ]; then 
  BANNER="##########################################"
  echo $BANNER
  echo "# Loading ${HOME}/.bash_profile"
  echo $BANNER

  # Terminal Prompt 
  # No idea how I figured how to do this 
  export PS1="$(tput bold)[\h][\W]$(tput sgr0) $ "

  # Bind-keys to enable partial history search
  #  via up & down keys
  bind '"\e[A": history-search-backward'
  bind '"\e[B": history-search-forward'
fi 

# Path Additions

# Conda
CONDA_SH=${HOME}/miniconda3/etc/profile.d/conda.sh
if [ -f ${CONDA_SH} ]; then source ${CONDA_SH}; fi

# Gcloud
if [ -f '/Users/dan/google-cloud-sdk/path.bash.inc' ]; then . '/Users/dan/google-cloud-sdk/path.bash.inc'; fi
if [ -f '/Users/dan/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/dan/google-cloud-sdk/completion.bash.inc'; fi


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/tools/B/dan_fritchman/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/tools/B/dan_fritchman/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/tools/B/dan_fritchman/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/tools/B/dan_fritchman/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Load shell-agnostic stuff
# This comes last in (the relatively frequent) case it fails
if [ -e ${HOME}/.profile ]; then source ${HOME}/.profile; fi
if [ -e ${HOME}/.profile.local ]; then source ${HOME}/.profile.local; fi




export PATH="$HOME/.poetry/bin:$PATH"
