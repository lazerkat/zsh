# Modified from dracula theme.
#
# Prompt should look like:
#
# • ~/Code/foo (master) >

# Modified version of git_prompt_info above. The git branch text can have
# clean/dirty color variants.
function alt_git_prompt_info() {
  local ref
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(parse_git_dirty)${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

local ret_status="%(?:%{$fg_bold[green]%}•:%{$fg_bold[red]%}•) "
local prompt_char="%{$fg_bold[cyan]%}>%{$reset_color%}"

PROMPT='${ret_status}% %{$fg_bold[blue]%}%~ $(alt_git_prompt_info)% ${prompt_char}%'

ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}("
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%}("
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=") %{$reset_color%}"
