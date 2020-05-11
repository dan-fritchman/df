
BANNER="##########################################"
if shopt -q login_shell; then
  echo $BANNER
  echo "# Loading ${HOME}/.bashrc"
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
if [ -f ${CONDA_SH} ]; then 
  source ${CONDA_SH};
fi

# From NVM 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dan/google-cloud-sdk/path.bash.inc' ]; then . '/Users/dan/google-cloud-sdk/path.bash.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/dan/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/dan/google-cloud-sdk/completion.bash.inc'; fi

# Rust/ Cargo
export PATH="$HOME/.cargo/bin:$PATH"

# Load shell-agnostic stuff
if [ -f ${HOME}/.profile ]; then 
  source ${HOME}/.profile
fi

if [ -f ${HOME}/.profile.local ]; then 
  source ${HOME}/.profile.local
fi


