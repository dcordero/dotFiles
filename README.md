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
ln -s `pwd`/gitconfig ~/.gitconfig
```

* Avoid iTunes launch when pressing media buttons
```
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist
```

# Things to install from AppStore:

* Giphy Capture
* iRamDisk
* Kindle
* Omnifocus 2
* Slack
* Pixelmator
* The Unarchiver

# More things to install from internet:

* [Android Studio](https://developer.android.com/studio)
* [Apple Configurator](https://developer.apple.com)
* [Charles Proxy](https://www.charlesproxy.com)
* [Google Chrome](https://www.google.com/chrome/)
* [Homebrew](http://brew.sh)
* [iTerm2](https://www.iterm2.com)
* [KeepingYouAwake](https://github.com/newmarcel/KeepingYouAwake)
* [Screenhero](https://screenhero.com)
* [Spotify](https://www.spotify.com)
* [Pathogen](https://github.com/tpope/vim-pathogen)
* [Pixelmator](http://www.pixelmator.com)
* [Send to Kindle](https://www.amazon.com/gp/sendtokindle/mac)
* [Skype](https://www.skype.com/en/)
* [Synx](https://github.com/venmo/synx)
* [TheNerdTree](http://vimawesome.com/plugin/nerdtree-red)
* [Xcode](https://developer.apple.com)
* [Synergy](http://symless.com/synergy/)
* [Vagrant](https://www.vagrantup.com/downloads.html)
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [VLC](http://www.videolan.org/vlc/index.html)
* [Vox Player](http://coppertino.com)
* [Inconsolate Font](https://fonts.google.com/specimen/Inconsolata)
* [Meslo LG S DZ Regular Font](https://github.com/powerline/fonts/blob/master/Meslo/Meslo%20LG%20S%20DZ%20Regular%20for%20Powerline.otf)
* [Powerline Shell](https://github.com/banga/powerline-shell)

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
* Configure Inconsolate Font in Xcode
* Configure Meslo Font in iTerm2
* Disable Siri
* Disable adjust keyboard brightness in low light (Settings -> Keyboard)
* Activate unlimited scrollback in iTerm
* Silence bell in iTerm
* Map Caps Lock key to ESC (Settings -> Keyboard -> Modifier Keys)
* Disable "Correct spelling automatically" (Settings -> Keyboard)
