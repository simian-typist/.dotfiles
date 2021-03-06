export VISUAL=vim
export EDITOR="$VISUAL"

export PATH=/opt/cuda/bin${PATH:+:${PATH}}$
export PATH=$HOME/.local/bin${PATH:+:${PATH}}$
export LD_LIBRARY_PATH=/opt/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda/extras/CUPTI/lib64

export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

# export PATH=/usr/local/texlive/2017/bin/x86_64-linux${PATH:+:$PATH}}$
# export PATH="$HOME/.cargo/bin:$PATH"

# export MANPATH=/usr/local/texlive/2017/texmf/doc/man${MANPATH:+:${MANPATH}}

# export INFOPATH=/usr/local/texlive/2017/texmf/doc/info${INFOPATH:+:${INFOPATH}}

export PATH="$PATH:$HOME/bin"

export LIBRARY_PATH="/usr/include/gtk-3.0:$LIBRARY_PATH"

# export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi
source "$HOME/.cargo/env"
