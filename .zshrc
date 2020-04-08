export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
  git
  tmux
  taskwarrior
)

source $ZSH/oh-my-zsh.sh

alias fcs='fortune | cowsay -f dragon-and-cow'
alias vim='nvim'
alias clock='while true; do tput clear; date +"%H : %M : %S" | figlet ; sleep 1; done'
alias aledit='nvim ~/.aliases'
alias setaliases='. ~/.aliases'
alias home='cd ~'
alias swploc='$HOME/.local/share/nvim/swap'

INC_APPEND_HISTORY=false
unsetopt INC_APPEND_HISTORY
unsetopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt APPEND_HISTORY
setopt HIST_IGNORE_SPACE

export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

export VISUAL=vim
export EDITOR="$VISUAL"

export PATH=/opt/cuda/bin${PATH:+:${PATH}}$
export LD_LIBRARY_PATH=/opt/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda/extras/CUPTI/lib64

export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

export PATH=/usr/local/texlive/2017/bin/x86_64-linux${PATH:+:$PATH}}$

export MANPATH=/usr/local/texlive/2017/texmf/doc/man${MANPATH:+:$MANPATH}}$

export INFOPATH=/usr/local/texlive/2017/texmf/doc/info${INFOPATH:+:$INFOPATH}}$

export PATH="$PATH:$HOME/bin"

fortune | cowsay -f dragon-and-cow
# . /home/torch/.virtualenvs/cv/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
setaliases
