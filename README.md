# Custom Settings and dot files

This repo contains my custom dot files and personal settings.
 
# Settings

* Activate Debug menu in Safari:
```
defaults write com.apple.Safari IncludeDebugMenu 1
```

* Custom Xcode theme
```
mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
ln -s `pwd`/dcordero.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/dcordero.dvtcolortheme
```

* Custom wallpaper
```
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Users/dcordero/Sources/dotFiles/wallpaper.jpg"'
```

* Custom .vimrc
```
ln -s `pwd`/vimrc ~/.vimrc
```

* Custom .bash_profile
```
ln -s `pwd`/bash_profile ~/.bash_profile
```

* Custom .gitconfig
```
ln -s `pwd`/gitconfig-work ~/.gitconfig
ln -s `pwd`/gitconfig-personal ~/.gitconfig
```

# Things to install from AppStore:

* Caffeine
* Giphy Capture
* iRamDisk
* Kindle
* Omnifocus 2
* Slack

# More things to install from internet:

* [Apple Configurator](https://developer.apple.com)
* [Charles Proxy](https://www.charlesproxy.com)
* [Google Chrome](https://www.google.com/chrome/)
* [Homebrew](http://brew.sh)
* [iTerm2](https://www.iterm2.com)
* [Screenhero](https://screenhero.com)
* [Spotify](https://www.spotify.com)
* [Pixelmator](http://www.pixelmator.com)
* [Send to Kindle](https://www.amazon.com/gp/sendtokindle/mac)
* [Synx](https://github.com/venmo/synx)
* [Xcode](https://developer.apple.com)
* [Vagrant](https://www.vagrantup.com/downloads.html)
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [VLC](http://www.videolan.org/vlc/index.html)
* [Vox Player](http://coppertino.com)

# More things to do

* Turn on zoom in Accessibility settings
* Autohide the Dock
* Autohide menu bar
* Configure 5 desktops
* Configure shortcuts to navigate desktops
* Dark menu bar and Dock
* Trackpad tap to click
* Misson control disable automatic rearrange of Spaces
* Show keychain status on the menu bar
* Show battery percent on the menu bar
* Show bluetooth on the menu bar
