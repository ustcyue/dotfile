#!/bin/bash
CURRENT_DIR=~/mydotfile
cp ${CURRENT_DIR}/.bash_profile ~/.bash_profile
cp ${CURRENT_DIR}/.zshrc ~/.zshrc
cp -r ${CURRENT_DIR}/.oh-my-zsh ~/

cp ${CURRENT_DIR}/.tmux.conf ~/.tmux.conf

cp ${CURRENT_DIR}/.vimrc ~/.vimrc
