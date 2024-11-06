#! /usr/bin/bash

################ ##   #     #
#
# Copy nvim config from local folder to its work path
#
################ ##   #     #

set -e

source ./VARS.sh

cp -r $SAVE_DIR $NVIM_CONFIG_PATH
