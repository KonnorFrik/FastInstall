#! /bin/bash

source ./VARS.sh

URL=https://github.com/jesseduffield/lazygit/releases/tag/v0.42.0/lazygit_0.42.0_Linux_x86_64.tar.gz

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo $SRC_DIR/lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm -f ./lazygit
