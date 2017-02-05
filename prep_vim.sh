#!/bin/bash 

repos="
https://github.com/kchmck/vim-coffee-script.git
https://github.com/mtscout6/vim-cjsx.git 
https://github.com/pangloss/vim-javascript.git 
git://github.com/wavded/vim-stylus.git
https://github.com/fatih/vim-go.git
https://github.com/elzr/vim-json.git
git://github.com/tpope/vim-scriptease.git
git://github.com/tpope/vim-sensible.git
https://github.com/vim-scripts/nginx.vim"

cd ~/.vim/bundle

for f in $repos
  do
    echo "cloning repo: $f"
    git clone $f
  done
# install dockerfile plugin
cp -r dockerfile ~/.vim/bundle

# copy vimrc
cp vimrc ~/.vimrc
