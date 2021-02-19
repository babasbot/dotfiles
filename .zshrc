source ~/src/antigen/antigen.zsh

export TERM=xterm-256color-italic
export NVM_AUTOLOAD=1

antigen use oh-my-zsh

antigen bundle git
antigen bundle dotenv
antigen bundle rails
antigen bundle bundler
antigen bundle tmux
antigen bundle rbenv
antigen bundle nvm-auto

antigen bundle babasbot/fortune-cowsay-zsh

antigen theme robbyrussell

antigen apply

# open tmux session if installed
if [[ $TMUX == "" ]]; then
  if which tmux 2>&1 >/dev/null; then
    tmux
  fi
fi
