export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="typewritten"
TYPEWRITTEN_CURSOR="block"
TYPEWRITTEN_SYMBOL="$"
TYPEWRITTEN_PROMPT_LAYOUT="singleline_verbose"
plugins=(git)
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
alias gl="git log"
alias wttr="curl wttr.in/tokyo"
alias vera="veracrypt"
alias shr="shred -zxvuf -n 30 -s 30M"
alias jx="jadx --show-bad-code"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
gpgconf --launch gpg-agent
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
