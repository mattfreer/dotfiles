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
  stow -d ~/dotfiles vim
  ```
3. Fetch vim submodules

  ```bash
  cd ~/.vim
  git submodule init
  git submodule update
  ```

[1]: http://www.gnu.org/software/stow/
