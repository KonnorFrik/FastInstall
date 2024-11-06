#! /usr/bin/bash

################ ##   #     #
#
# Download sources of lazygin and install it
#
################ ##   #     #

set -e

source ./VARS.sh

echo "Get lazygit latest version"
printf "\t%s\n" "curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*'"
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
echo "Version - $LAZYGIT_VERSION"

echo "Download lazygit to $LAZY_GIT_SRC_DIR/lazygit.tar.gz ..."
printf "\t%s\n" "curl -Lo $LAZY_GIT_SRC_DIR/lazygit.tar.gz 'https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz'"
curl -Lo $LAZY_GIT_SRC_DIR/lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"

echo "Unpack lazygit to here"
printf "\t%s\n" "tar xf $LAZY_GIT_SRC_DIR/lazygit.tar.gz lazygit"
tar xf $LAZY_GIT_SRC_DIR/lazygit.tar.gz lazygit

echo "Install lazygit"
printf "\t%s\n" "sudo install lazygit /usr/local/bin"
sudo install lazygit /usr/local/bin
rm -f lazygit
