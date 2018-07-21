#!/bin/sh

apt-get update
# Install neovim
apt-get install software-properties-common
apt-add-repository ppa:neovim-ppa/stable
apt-get update
apt-get install neovim
apt-get install python-dev python-pip python3-dev python3-pip

update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
update-alternatives --config vi
update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
update-alternatives --config vim
update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
update-alternatives --config editor

# Install vim-Plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Clone neovim profile and copy profile:
git clone https://github.com/elalaouifaris/neovim_config.git
mkdir -p ~/.config/nvim/
cp ./neovim_config/w_init.vim ~/.config/nvim/init.vim
rm -rf neovim.config
