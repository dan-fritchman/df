
BANNER="##########################################"
echo $BANNER
echo "# Loading ${HOME}/.zprofile"
echo $BANNER

[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

export PATH="$HOME/.cargo/bin:$PATH"
