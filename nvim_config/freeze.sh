#! /bin/bash

# Save current neovim config

source ./VARS.sh

cp -r $NVIM_CONFIG_PATH/nvim/* $SAVE_DIR
