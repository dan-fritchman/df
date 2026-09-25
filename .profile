
# ##########################################
# # Profile 
# Shell-agnostic setup, hopefully share-able across shells and machines
# ##########################################

# General terminal stuff
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
paths=(
    ${HOME}/.local/bin
    ${HOME}/.npm/bin
    ${HOME}/.cargo/bin
    ${HOME}/.yarn/bin
    ${HOME}/.codeium/windsurf/bin
    ${HOME}/.config/yarn/global/node_modules/.binn
    /opt/homebrew/opt/node@24/bin
    /opt/homebrew/opt/libpq/bin
)
for path in ${paths[@]}; do
    if [ -d "$path" ]; then
        export PATH=$path:$PATH
    fi
done

# Homebrew's advice for node@24, postgres, other stuff requiring compiler flags
export CPPFLAGS="$CPPFLAGS -I/opt/homebrew/opt/libpq/include"
export CPPFLAGS="$CPPFLAGS -I/opt/homebrew/opt/openssl@3/include"
export CPPFLAGS="$CPPFLAGS -I/opt/homebrew/opt/node@24/include"

export PKG_CONFIG_PATH="$PKG_CONFIG_PATH /opt/homebrew/opt/libpq/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH /opt/homebrew/opt/openssl@3/lib/pkgconfig"

export LDFLAGS="$LDFLAGS -L/opt/homebrew/opt/libpq/lib"
export LDFLAGS="$LDFLAGS -L/opt/homebrew/opt/openssl@3/lib"
export LDFLAGS="$LDFLAGS -L/opt/homebrew/opt/node@24/lib"

# IDEs 
alias co="code"
alias ci="code-insiders"
alias cu="cursor"
alias wi="windsurf"
alias z="zed"
alias codex="codex --dangerously-bypass-approvals-and-sandbox --dangerously-bypass-hook-trust"

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
