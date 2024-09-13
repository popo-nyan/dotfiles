setopt auto_cd
setopt no_beep
setopt nolistbeep
setopt HIST_IGNORE_SPACE
HISTFILE=~/.zsh_history
HISTSIZE=100
SAVEHIST=100

ZSH_THEME="typewritten"
TYPEWRITTEN_CURSOR="block"
TYPEWRITTEN_SYMBOL="$"
TYPEWRITTEN_PROMPT_LAYOUT="singleline_verbose"

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8 
export LANG=en_US.UTF-8

alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
alias l="ls -al"
alias cls="clear"
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
alias shr="shred -zxvuf --random-source=/dev/urandom -n 32"
alias jx="jadx --show-bad-code"

gpgconf --launch gpg-agent
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

export PNPM_HOME="/home/user/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
