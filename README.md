# Custom Settings and dot files

This repo contains my custom dot files and personal settings.

# Custom .bash_profile
```
ln -s `pwd`/bash_profile ~/.bash_profile
```

# Custom .gitconfig
```
ln -s `pwd`/gitconfig-work ~/.gitconfig
ln -s `pwd`/gitconfig-personal ~/.gitconfig
```

# Custom .vimrc
```
ln -s `pwd`/vimrc ~/.vimrc
```

# Set custom wallpaper
```
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Users/dcordero/Sources/dotFiles/wallpaper.jpg"'
```

# Custom Xcode theme
```
mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
ln -s `pwd`/dcordero.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/dcordero.dvtcolortheme
```

# Activate Debug menu in Safari
```
defaults write com.apple.Safari IncludeDebugMenu 1
```

# To install:

## Fastlane & Cocoapods
```
sudo gem install fastlane cocoapods -V
```

## Google Chrome
```
wget https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
open ~/Downloads/googlechrome.dmg
sudo cp -r /Volumes/Google\ Chrome/Google\ Chrome.app /Applications/
```

# More things to manually install:

* [Apple Configurator](https://itunes.apple.com/us/app/apple-configurator-2/id1037126344?mt=12)
* [Giphy Capture](https://itunes.apple.com/us/app/giphy-capture.-the-gif-maker/id668208984?mt=12)
* [iTerm2](https://www.iterm2.com)
* [Screenhero](https://screenhero.com)
* [Slack](https://slack.com) 
* [Spotify](https://www.spotify.com)
* [Pixelmator](http://www.pixelmator.com)
* [Synx](https://github.com/venmo/synx)
* [Xcode](https://itunes.apple.com/ch/app/xcode/id497799835?mt=12)
* [Vagrant](https://www.vagrantup.com/downloads.html)
* [VLC](http://www.videolan.org/vlc/index.html)
