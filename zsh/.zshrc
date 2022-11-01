export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git z zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export DOCKER_HOST=unix:///var/run/docker.sock

# pnpm
export PNPM_HOME="/home/doug/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# create alias load-nvm to load nvm
# alias n="source $NVM_DIR/nvm.sh"
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
