# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1200
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
#
#
# Color Settings
autoload -U compinit
compinit

alias scrapy="/Library/Frameworks/Python.framework/Versions/3.5/bin/scrapy"

export LSCOLORS=exfxcxdxdxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls='ls -GF'
alias gls='gls --color'
alias la='ls -a'


zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads n    vm bash_completion


# -----------------------------
source ~/.zplug/init.zsh

# プラグインの定義
zplug "zsh-users/zsh-autosuggestions"
zplug "b4b4r07/enhancd", use:enhancd.sh

# インストール
if ! zplug check --verbose; then
     printf 'Install ? [y/N]: '
     if read -q; then
         echo; zplug install
     fi
fi

 zplug load --verbose

