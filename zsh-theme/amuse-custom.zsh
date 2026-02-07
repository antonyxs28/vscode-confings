# vim:ft=zsh ts=2 sw=2 sts=2

# Permite usar $(...) no prompt
setopt prompt_subst

# =========================
# Git prompt config
# =========================

# Prefixo SEM ícone, MAS mantendo a cor da branch
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Repo sujo
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"

# Arquivos não rastreados
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"

# Repo limpo
ZSH_THEME_GIT_PROMPT_CLEAN=""

# =========================
# Mostra 🌿 só se for repo git
# =========================
function custom_git_info() {
  git rev-parse --is-inside-work-tree &>/dev/null && echo "🌿 "
}

# =========================
# Nome da pasta atual
# =========================
function current_folder_name() {
  echo "%{$fg_bold[blue]%}$(basename $PWD)%{$reset_color%}"
}

# =========================
# PROMPT PRINCIPAL
# =========================
PROMPT="👤 %{$fg[green]%}%n%{$reset_color%} in \
\$(current_folder_name) \
\$(custom_git_info)\$(git_prompt_info) \
| %{$fg_bold[white]%}%*%{$reset_color%}
❯ "

# =========================
# Ruby (direita – opcional)
# =========================
RPROMPT='$(ruby_prompt_info)'

# =========================
# Python virtualenv
# =========================
VIRTUAL_ENV_DISABLE_PROMPT=0
ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX=" %{$fg[green]%}🐍 "
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_VIRTUALENV_PREFIX=$ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX
ZSH_THEME_VIRTUALENV_SUFFIX=$ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX
