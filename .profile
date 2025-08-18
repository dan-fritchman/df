
# ##########################################
# # Profile 
# Shell-agnostic setup, hopefully share-able across shells and machines
# ##########################################

# General terminal stuff
export EDITOR=vim
alias ll='ls -alhpG'
alias la='ls -alhpG'
alias h='history'
alias t='top'
alias e='exit'
alias c='clear'
alias g='grep'
alias vi='vim'
alias v='vim'

# tmux
alias tmns='tmux new -s '
alias tma='tmux attach '
alias tmat='tmux attach -t '
alias tmas='tmux attach -t '
alias tmst='tmux switch -t '
alias tmss='tmux switch -t '
alias tmll='tmux ls '
alias tmls="tmux ls -F '#{session_name}'"
alias tmd='tmux detach '
alias tmk='tmux kill-session -t '
alias tmks='tmux kill-session -t '

# iterm
alias lite='it2setcolor preset "Material" '
alias dark='it2setcolor preset "Smoooooth" '
alias grey='it2setcolor preset "Rippedcasts" '

# Path Additions
export PATH=${HOME}/.local/bin:${PATH}
export PATH=${HOME}/.npm/bin/:${HOME}/.cargo/bin:${PATH}
export PATH=${HOME}/.yarn/bin:${HOME}/.config/yarn/global/node_modules/.bin:${PATH}

# IDE 
alias co="code"
alias ci="code-insiders"
alias cu="cursor"
alias wi="windsurf"
alias z="zed"

# Git utilities
gitstat() {
  for dir in */; do
    if [ -d "$dir/.git" ]; then
      branch=$(git -C "$dir" branch --show-current)
      echo "$dir: $branch"
    fi
  done
}
alias gs='gitstat'