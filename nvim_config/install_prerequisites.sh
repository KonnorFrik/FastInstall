#! /usr/bin/bash

################ ##   #     #
#
# Download dependencies with apt
#
################ ##   #     #

sudo apt install ninja-build gettext cmake unzip curl build-essential -y

# TODO: find way for autoinstall py-env and pip
# Answer
# sudo apt install python3-pip python3-venv

# this need for lsp modules
# also need install python env and pip for current python version
sudo apt install npm cargo clangd clang-tidy -y
