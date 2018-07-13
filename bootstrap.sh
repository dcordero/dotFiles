
#!/usr/bin/env sh
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
RESTORE='\033[0m'

installApps() {
    echo "${YELLOW}Install Homebrew${RESTORE}"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    echo "${YELLOW}Install other tools${RESTORE}"
    brew install mc
    brew install imagemagick
    brew install hub
    brew install bundler
    brew cast install iterm2
    brew install m-cli
    brew install python
    brew install vim --with-override-system-vi --with-ruby

    echo "${YELLOW}Install and configure Git${RESTORE}"
    brew install git
}

configure() {
    echo "${YELLOW}Configure powerline-shell${RESTORE}"
    ln -s `pwd`/powerline-shell.py ~/.powerline-shell.py

    echo "${YELLOW}Configure Bash${RESTORE}"
    ln -s `pwd`/bash_profile ~/.bash_profile

    echo "${YELLOW}Link iCloud from home folder${RESTORE}"
    ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs ~/iCloud

    echo "${YELLOW}Configure Git${RESTORE}"
    ln -s `pwd`/gitconfig ~/.gitconfig

    echo "${YELLOW}Configure Vim${RESTORE}"
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
    cd command-t && rake make && cd ..
    cd -

    echo "${YELLOW}Setup walpaper${RESTORE}"
    m wallpaper ./wallpaper.jpg

    echo "${YELLOW}Avoid iTunes launch when pressing media buttons${RESTORE}"
    launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

    echo "${YELLOW}Activate Debug mode in Safari${RESTORE}"
    defaults write com.apple.Safari IncludeDebugMenu 1

    echo "${YELLOW}Configure Visual Studio Code${RESTORE}"
    ln -s `pwd`/vscode.json Library/Application\ Support/Code/User/settings.json

    echo "${YELLOW}Disable Press and Hold in VSCode${RESTORE}"
    defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

    echo "${YELLOW}Configure Dock${RESTORE}"
    m dock autohide YES
    m dock magnification YES
    m dock position BOTTOM

    echo "${YELLOW}Configure Finder${RESTORE}"
    m finder showhiddenfiles YES
    m finder showextensions YES

    echo "${YELLOW}Configure custom Xcode theme${RESTORE}"
    mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
    ln -s `pwd`/dcordero.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/dcordero.dvtcolortheme

    echo "${YELLOW}Hide useless predefined folders under Home${RESTORE}"
    chflags hidden ~/Music
    chflags hidden ~/Movies
    chflags hidden ~/Pictures
    chflags hidden ~/Public
}

installApps()
configure()