
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

# SSH Tunneling
# Usage: `tunnel <host> <port>`
# Tunnels `host:port` to `localhost:port`
tunnel() {
	ssh -L ${2}:localhost:${2} ${1} -Nf
}

# Load shell-agnostic stuff
# This comes last in case it fails
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'
[[ -e ~/.profile.local ]] && emulate sh -c 'source ~/.profile.local'

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"
