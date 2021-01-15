# dotfiles

Dotfiles are plain text configuration files. They are called "dotfiles" as they
are typically named with a leading dot, making them hidden.

This repository mainly contains my shell and editor configurations and
preferences.

Why would I want to version my dotfiles on GitHub?

- Backup, restore, and sync my preference and settings.
- Share what I've learned.
- Learn from others

### Installation

```sh
ln -s ~/src/dotfiles/.zshrc ~/.zshrc
ln -s ~/src/dotfiles/.hyper.js ~/.hyper.js
ln -s ~/src/dotfiles/init.vim ~/.config/nvim/init.vim
ln -s ~/src/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/src/dotfiles/.editorconfig ~/.editorconfig
ln -s ~/src/dotfiles/.tmux.conf ~/.tmux.conf
```

### License

This project is licensed under the MIT License - see the [LICENSE.txt](LICENSE.txt) file for details.
