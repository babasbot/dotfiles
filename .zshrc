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

antigen bundle babasbot/auto-fortune-cowsay-zsh
antigen bundle babasbot/auto-tmux-zsh

antigen theme robbyrussell

antigen apply
