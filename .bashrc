
if shopt -q login_shell; then
  BANNER="##########################################"
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

fi # -q login_shell

# Path Additions

# Conda
CONDA_SH=${HOME}/miniconda3/etc/profile.d/conda.sh
if [ -f ${CONDA_SH} ]; then source ${CONDA_SH}; fi

# Gcloud
if [ -f '/Users/dan/google-cloud-sdk/path.bash.inc' ]; then . '/Users/dan/google-cloud-sdk/path.bash.inc'; fi
if [ -f '/Users/dan/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/dan/google-cloud-sdk/completion.bash.inc'; fi

# Load shell-agnostic stuff
# This comes last in case it fails
if [ -f ${HOME}/.profile ]; then source ${HOME}/.profile fi
if [ -f ${HOME}/.profile.local ]; then source ${HOME}/.profile.local fi

