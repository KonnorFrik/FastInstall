#! /usr/bin/bash

################ ##   #     #
#
# Copy nvim config from its work path to local folder
#
################ ##   #     #

source ./VARS.sh

cp -r $NVIM_CONFIG_PATH/nvim/* $SAVE_DIR
