#! /bin/bash

source ./VARS.sh
NVIM_SRC_DIR=$SRC_DIR/neovim

git clone https://github.com/neovim/neovim $NVIM_SRC_DIR
cd $NVIM_SRC_DIR 
git checkout stable
make CMAKE_BUILD_TYPE=Release
sudo make install
