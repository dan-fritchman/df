
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

# Gcloud
if [ -f '${HOME}/google-cloud-sdk/path.bash.inc' ]; then . '${HOME}/google-cloud-sdk/path.bash.inc'; fi
if [ -f '${HOME}/google-cloud-sdk/completion.bash.inc' ]; then . '${HOME}/google-cloud-sdk/completion.bash.inc'; fi

# Cargo environment 
if [ -f '${HOME}/.cargo/env']; then . '${HOME}/.cargo/env'; fi

# Poetry
export PATH="$HOME/.poetry/bin:$PATH"

# Load shell-agnostic stuff
# This comes last in (the relatively frequent) case it fails
if [ -e ${HOME}/.profile ]; then source ${HOME}/.profile; fi
if [ -e ${HOME}/.profile.local ]; then source ${HOME}/.profile.local; fi




