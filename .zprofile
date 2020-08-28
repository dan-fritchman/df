
BANNER="##########################################"
echo $BANNER
echo "# Loading ${HOME}/.zprofile"
echo $BANNER

[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'
[[ -e ~/.profile.local ]] && emulate sh -c 'source ~/.profile.local'

export PATH="$HOME/.cargo/bin:$PATH"

