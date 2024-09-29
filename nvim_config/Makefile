.RECIPEPREFIX = >
.PHONY: all

all: make_exec preinstall install_prerequisites install_neovim install_config

make_exec:
> chmod u+x $(wildcard *.sh)

preinstall:
> ./preinstall.sh

install_prerequisites:
> ./install_prerequisites.sh

install_neovim:
> ./install_neovim.sh

install_config:
> ./install_config.sh

################### NOT IN 'ALL' CHAIN ###################
install_lazygit:
> ./install_lazygit.sh

freeze:
> ./freeze.sh
################### NOT IN 'ALL' CHAIN ###################
