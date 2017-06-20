#!/bin/bash

# add the apt repo for .net core
sudo sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 417A0893
sudo apt-get update
sudo apt-get install dotnet-dev-1.0.4

cd ~/.vim/bundle/
git clone https://github.com/OmniSharp/omnisharp-vim.git
cd omnisharp-vim
git submodule update --init --recursive
cd server/
xbuild
cd ~/.vim/
git clone https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim
echo '" .net stuff' >> ~/.vimrc
echo 'set runtimepath^=~/.vim/bundle/ctrlp.vim' >> ~/.vimrc


