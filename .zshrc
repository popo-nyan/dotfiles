ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="typewritten"
TYPEWRITTEN_CURSOR="block"
TYPEWRITTEN_SYMBOL="$"
TYPEWRITTEN_PROMPT_LAYOUT="singleline_verbose"
plugins=(git)
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
PYENV_ROOT="$HOME/.pyenv"
gpgconf --launch gpg-agent
SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
setopt auto_cd
setopt no_beep
setopt nolistbeep
setopt HIST_IGNORE_SPACE
source $ZSH/oh-my-zsh.sh

alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
alias l="ls -al"
alias a="cd ../"
alias aa="cd ../../"
alias aaa="cd ../../../"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gr="git rebase"
alias gbr="git branch"
alias gull="git pull"
alias gl="git log"
alias wttr="curl wttr.in/tokyo"
alias vera="veracrypt"
alias shr="shred -zxvuf --random-source=/dev/urandom -n 32 -s 50M"
alias jx="jadx --show-bad-code"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
