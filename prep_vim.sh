#!/bin/bash 

repos="
https://github.com/kchmck/vim-coffee-script.git
https://github.com/mtscout6/vim-cjsx.git 
https://github.com/mxw/vim-jsx.git
https://github.com/pangloss/vim-javascript.git 
git://github.com/wavded/vim-stylus.git
https://github.com/fatih/vim-go.git
https://github.com/elzr/vim-json.git
git://github.com/tpope/vim-scriptease.git
git://github.com/tpope/vim-sensible.git
https://github.com/vim-scripts/nginx.vim
https://github.com/python-mode/python-mode#how-to-install
https://github.com/scrooloose/nerdtree.git"

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

mkdir -p ~/.vim/bundle
pushd ~/.vim/bundle

for f in $repos
  do
    echo "cloning repo: $f"
    git clone $f
  done
popd

# install dockerfile plugin
cp -r ./dockerfile ~/.vim/bundle

# copy vimrc
cp ./vimrc ~/.vimrc

# git promp and completion
curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

curl -o ~/.git-completion.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

# download iTerm2 shell integration
curl -L https://iterm2.com/misc/install_shell_integration.sh | bash

# copy bash profile
cp bash_git_docker_alias  ~/.bash_profile

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# git pr, issue templates
cp -r ./github_templates ~/.github
