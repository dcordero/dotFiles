#!/bin/sh

echo "Configure Bash"
ln -s `pwd`/bash_profile ~/.bash_profile

echo "Install Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Install Vim 8"
brew install vim --with-override-system-vi --without-ruby

echo "Configure Vim"
ln -s `pwd`/vimrc ~/.vimrc

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/keith/swift.vim.git
git clone https://github.com/bronson/vim-trailing-whitespace.git
git clone https://github.com/elzr/vim-json.git
cd -

echo "Install m-cli"
brew install m-cli

echo "Set wallpaper"
m wallpaper ./wallpaper.jpg

echo "Install Git"
brew install git

echo "Configure Git"
ln -s `pwd`/gitconfig ~/.gitconfig

echo "Avoid iTunes launch when pressing media buttons"
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

echo "Activate Debug mode in Safari"
defaults write com.apple.Safari IncludeDebugMenu 1

echo "Configure Dock"
m dock autohide YES
m dock magnification YES
m dock position BOTTOM

echo "Configure Finder"
m finder showhiddenfiles YES
m finder showextensions YES

echo "Disable Notification Center"
m notification showcenter NO

