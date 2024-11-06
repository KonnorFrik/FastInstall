#! /usr/bin/bash

################ ##   #     #
#
# Download dependencies with apt
#
################ ##   #     #

set -e

sudo apt install ninja-build gettext cmake unzip curl build-essential -y

# this need for lsp modules
sudo apt install npm cargo clangd clang-tidy -y
