
BANNER="##########################################"
echo $BANNER
echo "# Loading ${HOME}/.zshrc"
echo $BANNER

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/dan/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/dan/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/dan/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/dan/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Custom Stuff
bindkey -e
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

# Terminal Prompt Styling (however this works)  
export PS1="%10F%m%f:%11F%1~%f \$ "

# Gcloud
if [ -f '/Users/dan/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dan/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/dan/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dan/google-cloud-sdk/completion.zsh.inc'; fi

# iTerm Shell Integration 
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# SSH Tunneling
# Usage: `tunnel <host> <port>`
# Tunnels `host:port` to `localhost:port`
tunnel() {
	ssh -L ${2}:localhost:${2} ${1} -Nf
}

# JupyterLab as a Chrome App
# Usage: `jlab <port>`
jlab() {
	/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --app=http://localhost:${1}
}

# Load shell-agnostic stuff
# This comes last in case it fails
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'
[[ -e ~/.profile.local ]] && emulate sh -c 'source ~/.profile.local'


export PATH="/usr/local/opt/avr-gcc@8/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Postgres Stuff 
  
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib -L/opt/homebrew/opt/openssl@3/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include -I/opt/homebrew/opt/openssl@3/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig:/opt/homebrew/opt/openssl@3/lib/pkgconfig"

