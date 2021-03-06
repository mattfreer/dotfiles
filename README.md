#Dotfiles

Dotfiles for various applications.

##Installation:

1. Clone repo:

  ```bash
    mkdir ~/dotfiles && cd ~/dotfiles
    git clone git@github.com:mattfreer/dotfiles.git .
  ```
2. Create symlinks (Assumes you are using [GNU Stow][1]):

  ```bash
  stow -d ~/dotfiles spacemacs
  stow -d ~/dotfiles vim
  stow -d ~/dotfiles tmux
  stow -d ~/dotfiles git
  stow -d ~/dotfiles ruby
  stow -d ~/dotfiles vagrant
  stow -d ~/dotfiles boot
  stow -d ~/dotfiles lein
  ```
3. Fetch vim submodules

  ```bash
  cd ~/.vim
  git submodule init
  git submodule update
  ```
4. Install tmux plugins

  ```bash
  cd ~/.tmux/plugins/ && git clone https://github.com/tmux-plugins/tpm
  ~/.tmux/plugins/tpm/scripts/install_plugins.sh
  ```
5. To delete (unstow) a package

  ```bash
  stow -D lein
  ```

[1]: http://www.gnu.org/software/stow/
