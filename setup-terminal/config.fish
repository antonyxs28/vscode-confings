# =========================
# PATH
# =========================

set -gx PATH $HOME/.local/bin $PATH
set -gx PATH $HOME/bin $PATH

# fnm (Node version manager)
if type -q fnm
    fnm env --use-on-cd | source
end

# =========================
# PROMPT
# =========================

starship init fish | source

# =========================
# PLUGINS
# =========================

# zoxide (cd inteligente)
zoxide init fish | source

# fzf bindings
if type -q fzf
    fzf_key_bindings
end

# =========================
# ALIASES BASICOS
# =========================

alias cls="clear"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# =========================
# EZA (LS MELHOR)
# =========================

alias ls="eza --icons --group-directories-first"
alias ll="eza -lh --icons --git"
alias la="eza -lah --icons --git"
alias tree="eza --tree --icons"

# =========================
# BAT (CAT MELHOR)
# =========================

alias cat="batcat --paging=never"

# =========================
# GIT PRODUTIVIDADE
# =========================

alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gl="git log --oneline --graph"

# =========================
# NODE / NPM / PNPM
# =========================

alias ni="npm install"
alias nr="npm run"

alias pi="pnpm install"
alias pr="pnpm run"

alias pdev="pnpm run dev"
alias pbuild="pnpm run build"
alias dev="npm run dev"
alias build="npm run build"
# =========================
# BUSCA RAPIDA
# =========================

alias grep="rg"

