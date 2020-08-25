
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
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
export PS1="%10F%m%f:%11F%1~%f \$ "


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dan/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dan/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dan/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dan/google-cloud-sdk/completion.zsh.inc'; fi

# iTerm Shell Integration 
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


