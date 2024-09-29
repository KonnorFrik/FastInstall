.RECIPEPREFIX = >
.PHONY: all

all: install_neovim install_packages

install_neovim:
	$(MAKE) -C nvim_config all

install_packages:
	$(MAKE) -C packages all
