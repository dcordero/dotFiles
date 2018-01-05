#!/bin/sh

echo "Configure powerline-shell"
ln -s `pwd`/powerline-shell.py ~/.powerline-shell.py

echo "Configure Bash"
ln -s `pwd`/bash_profile ~/.bash_profile


echo "Link iCloud from home folder"
ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs ~/iCloud

echo "Install Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Install and configure midnight commander"
brew install mc

echo "Install and configure Git"
brew install git
ln -s `pwd`/gitconfig ~/.gitconfig

echo "Install and configure Vim"
export C_INCLUDE_PATH=/System/Library/Frameworks/Python.framework/Headers:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=/System/Library/Frameworks/Python.framework/Headers:$CPLUS_INCLUDE_PATH
brew install python
brew install vim --with-override-system-vi --with-ruby
ln -s `pwd`/vimrc ~/.vimrc

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/ivalkeen/nerdtree-execute
git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git
git clone git://github.com/dhruvasagar/vim-vinegar.git
git clone https://github.com/keith/swift.vim.git
git clone https://github.com/bronson/vim-trailing-whitespace.git
git clone https://github.com/elzr/vim-json.git
git clone https://github.com/wincent/command-t
cd command-t && rake make && cd ..
cd -

echo "Install m-cli"
brew install m-cli

echo "Set wallpaper"
m wallpaper ./wallpaper.jpg

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

echo "Configure custom Xcode theme"
mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
ln -s `pwd`/dcordero.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/dcordero.dvtcolortheme

echo "Hide useless predefined folders under Home"
chflags hidden ~/Music
chflags hidden ~/Movies
chflags hidden ~/Pictures
chflags hidden ~/Public

