# Based on bira theme

setopt prompt_subst

() {

local PR_USER PR_USER_OP PR_PROMPT PR_HOST

if [[ $UID -ne 0 ]]; then # normal user
  PR_USER='%F{#A217FF}%n%f'
  PR_USER_OP='%F{#A217FF}%#%f'
  PR_PROMPT='%f%F{#D8ED53}➤ %f'
else # root
  PR_USER='%F{#A217FF}%n%f'
  PR_USER_OP='%F{#A217FF}%#%f'
  PR_PROMPT='%F{red}➤ %f'
fi

# Check if we are on SSH or not
if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
  PR_HOST='%F{white}%M%f' # SSH
else
  PR_HOST='%F{#a217ff}%m%f' # no SSH
fi


local return_code="%(?..%F{red}%? ↵%f)"

local user_host="${PR_USER}%F{#D8ED53}@${PR_HOST}"
local current_dir="%B%F{#D8ED53}%~%f%b"
local git_branch='$(git_prompt_info)%f'

PROMPT="%F{#D8ED53}╭─%f${user_host} ${current_dir} \$(ruby_prompt_info) ${git_branch}
%F{#D8ED53}╰─%f$PR_PROMPT "
RPROMPT="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%F{#A217FF}[%f%F{#D8ED53}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f%F{#A217FF}] %f"
ZSH_THEME_RUBY_PROMPT_PREFIX="%F{red}<"
ZSH_THEME_RUBY_PROMPT_SUFFIX=">%f"
ZSH_THEME_VIRTUALENV_PREFIX="%F{cyan}("
ZSH_THEME_VIRTUALENV_SUFFIX=")%f "

}
