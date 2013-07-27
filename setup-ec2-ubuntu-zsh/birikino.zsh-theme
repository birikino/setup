#!/usr/bin/env zsh
#local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

setopt promptsubst

autoload -U add-zsh-hook

PROMPT_SUCCESS_COLOR=$FG[117]
PROMPT_FAILURE_COLOR=$FG[124]
PROMPT_VCS_INFO_COLOR=$FG[242]
PROMPT_PROMPT=$FG[130]
GIT_DIRTY_COLOR=$FG[124]
GIT_CLEAN_COLOR=$FG[118]
GIT_PROMPT_INFO=$FG[012]

PROMPT='[%{$PROMPT_SUCCESS_COLOR%}%1d%{$reset_color%}%{$GIT_CLEAN_COLOR%}$(git_prompt_status)$(git_prompt_info)%{$reset_color%}] %{$PROMPT_PROMPT%}$%{$reset_color%} '

#RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX=" (branch:"
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$reset_color%}%{$GIT_DIRTY_COLOR%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$reset_color%}%{$GIT_DIRTY_COLOR%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$reset_color%}%{$GIT_DIRTY_COLOR%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$reset_color%}%{$GIT_DIRTY_COLOR%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$reset_color%}%{$FG[190]%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$reset_color%}%{$FG[190]%}"
#ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[082]%}✚%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[166]%}✹%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[160]%}✖%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[220]%}➜%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[082]%}═%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[190]%}✭%{$reset_color%}"

