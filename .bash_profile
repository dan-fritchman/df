
BANNER="##########################################"
echo $BANNER
echo "# Loading ${HOME}/.bash_profile"
echo $BANNER

source ${HOME}/.profile

# Terminal Prompt 
# No idea how I figured how to do this 
export PS1="$(tput bold)[\h][\W]$(tput sgr0) $ "

# Bind-keys to enable partial history search
#  via up & down keys
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Path Additions

# Conda
CONDA_SH=${HOME}/miniconda3/etc/profile.d/conda.sh
if [ -f ${CONDA_SH} ]; then source ${CONDA_SH};
else echo "No conda.sh found"; fi

# From NVM 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dan/google-cloud-sdk/path.bash.inc' ]; then . '/Users/dan/google-cloud-sdk/path.bash.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/dan/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/dan/google-cloud-sdk/completion.bash.inc'; fi


