# Dot files for vim, oh-my-zsh, tmux

![Screenshot (38)](https://user-images.githubusercontent.com/16856932/108633338-c04ca980-7499-11eb-813d-0cd11ae91477.png)

## Steps for setup

- Install `oh-my-zsh`
- Install `tmux`
- Install `vim`
- copy `.vimrc` , `.tmux.conf`, `.zshrc` to `~`
- copy `alias.sh` to `~/.oh-my-zsh/lib`
- copy `.vim`, `.tmux` to `~`
- `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
- create directory `~/.zsh`
- `git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions`
- `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting`

### In `ls` if you see green background against dark theme

Or if the directory colors are weird for your color scheme, try the following

- `dircolors -p > ~/.dircolors`
- Search for `OTHER_WRITABLE` in this file
- Maybe change it to `34;40` or any other color code suitable for your background
- `eval "$(dircolors ~/.dircolors)";`

## Try powerlevel10k

[Getting started](https://github.com/romkatv/powerlevel10k#manual)
