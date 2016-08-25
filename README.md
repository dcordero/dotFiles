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

* [iTerm2](https://www.iterm2.com)
* [Screenhero](https://screenhero.com)
* [Slack](https://slack.com) 
* [Spotify](https://www.spotify.com)
