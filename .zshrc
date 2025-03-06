export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gnzh"

plugins=(git zsh-syntax-highlighting zsh-bat zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# 42
alias norm='norminette'
alias tcc='cc -Wall -Werror -Wextra'
alias tgcc='gcc -Wall -Werror -Wextra'

# ls
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -A'
alias lm='ls -m'
alias lr='ls -R'

# git
alias gcl='git clone --depth 1'
alias gsub='git submodule init && git submodule update'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'

export str="\e[48;2;100;20;100;1m Ici c'est le terminal de Achille \e[0m\n"
export strlen=32
export i=0; while [ $i != $(expr $(expr $(expr $(tput cols) - $strlen) / 2)) ] ; do echo -n ' '; export i=$(expr $i + 1); done; echo $str
clean()
{
clear
export str="\e[48;2;100;20;100;1m Ici c'est le terminal de Achille \e[0m\n"
export strlen=32
export i=0; while [ $i != $(expr $(expr $(expr $(tput cols) - $strlen) / 2)) ] ; do echo -n ' '; export i=$(expr $i + 1); done; echo $str
}


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

typeset -g ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#3C3442,bold,underline"
alias nvim="snap run nvim"