#! /bin/bash

source ./VARS.sh

git clone https://github.com/neovim/neovim $SRC_DIR
cd $SRC_DIR/neovim 
git checkout stable
make CMAKE_BUILD_TYPE=Release
sudo make install
