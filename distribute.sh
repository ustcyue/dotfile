#!/bin/bash
CURRENT_DIR=~/mydotfile
cp ${CURRENT_DIR}/.bash_profile ~/.bash_profile

cp ${CURRENT_DIR}/.tmux.conf ~/.tmux.conf

if [ ! -d "~/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
cp ${CURRENT_DIR}/mytheme.zsh-theme ~/.oh-my-zsh/themes/mytheme.zsh-theme
cp ${CURRENT_DIR}/.zshrc ~/.zshrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ${CURRENT_DIR}/.vimrc ~/.vimrc
