# Custom Settings and dot files

This repo contains my custom dot files and personal settings.

# Initial configuration

**Bash**
```
ln -s `pwd`/bash_profile ~/.bash_profile
```

**Zsh**
```
ln -s `pwd`/zshrc ~/.zshrc
```

**Git**
```
ln -s `pwd`/gitignore_global ~/.gitignore_global
ln -s `pwd`/gitconfig ~/.gitconfig
```

**Tig**
```
ln -s `pwd`/tigrc ~/.tigrc
```

**Powerline Shell**
```
ln -s `pwd`/powerline-shell.py ~/.powerline-shell.py
```

**Tmux**
```
ln -s `pwd`/tmux.conf ~/.tmux.conf
```

**Vim**
```
ln -s `pwd`/vimrc ~/.vimrc
```

**Neovim**
```
mkdir ~/.config/nvim/
ln -s `pwd`/nvim.conf ~/.config/nvim/init.vim
```

**VSCode**
```
ln -s `pwd`/vscode.json Library/Application\ Support/Code/User/settings.json
```

**iCloud Link***
```
ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs ~/iCloud
```

**Xcode custom theme**
```
mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
ln -s `pwd`/dcordero.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/dcordero.dvtcolortheme
```

# More things to configure

* Turn on zoom in Accessibility settings
* Configure 5 desktops
* Trackpad tap to click
* Mission control disable automatic rearrange of Spaces
* Show battery percent on the menu bar
* Show bluetooth on the menu bar
* Configure Meslo Font in iTerm2
* Disable Siri
* Disable adjust keyboard brightness in low light (Settings -> Keyboard)
* Disable automatically adjust screen brightness (Settings -> Displays)
* iTerm configure tab bar location to Bottom (Settings -> Appearance -> Tab Bar location)
* Configure Solarized Dark theme in iTerm (Settings -> Profiles -> Colors -> Color Presets)
* Activate unlimited scrollback in iTerm (Settings -> Profiles -> Terminal -> Unlimited scrollback)
* Silence bell in iTerm (Settings -> Profiles -> Terminal -> Silence bell)
* Map Caps Lock key to ESC (Settings -> Keyboard -> Modifier Keys)
* Disable "Correct spelling automatically" (Settings -> Keyboard)
* Disable "Guest User"
* Custom keyboard shortcuts: (Settings -> Keyboard -> Shortcuts)
    - Configure shortcuts to navigate desktops with Control-Number
    - Move focus to active or next window: ALT-CMD-Right
    - Move focus to Dock: CMD-D
* Custom App Shortcut: (Settings -> Keyboard -> Shortcuts -> App Shortcuts)
    - Avoid Safari closing with CMD-W when having pin tabs:
    - Application: "Safari", Menu Title: "Close Tab", Keyboard Shortcut: CMD-W
        
* Disable: Settings -> Mission Control -> When switching to an application, switch to a Space with open windows for the application

# Homebrew

**Install Homebrew**
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

**Install Apps**
```
brew install mc
brew install imagemagick
brew install hub
brew install vim --with-override-system-vi --with-ruby
brew install neovim
brew install git
brew install imagemagick
```

# Things to install from AppStore:

* [Rbenv](https://github.com/rbenv/rbenv)
* [Giphy Capture](https://apps.apple.com/ch/app/giphy-capture-the-gif-maker/id668208984?l=en&mt=12)
* [Kindle](https://apps.apple.com/ch/app/kindle/id405399194?l=en&mt=12)
* [Omnifocus](https://apps.apple.com/ch/app/omnifocus-3/id1346203938?l=en&mt=12)
* [Pixelmator](https://apps.apple.com/ch/app/pixelmator/id407963104?l=en&mt=12)
* [The Unarchiver](https://apps.apple.com/ch/app/the-unarchiver/id425424353?l=en&mt=12)
* [Magnet](https://itunes.apple.com/ch/app/magnet/id441258766?mt=12&ign-mpt=uo%3D4)
* [Typeeto](https://apps.apple.com/ch/app/typeeto-remote-bt-keyboard/id970502923?l=en&mt=12)

# More things to install from internet:

* [Node](https://nodejs.org)
* [iTerm2](https://www.iterm2.com)
* [Android Studio](https://developer.android.com/studio)
* [Bagel](https://github.com/yagiz/Bagel)
* [Inconsolate Font](https://fonts.google.com/specimen/Inconsolata)
* [KeepingYouAwake](https://github.com/newmarcel/KeepingYouAwake)
* [Lock](https://github.com/phelgo/Lock)
* [Meslo LG S DZ Regular Font](https://github.com/powerline/fonts/blob/master/Meslo%20Dotted/Meslo%20LG%20S%20DZ%20Regular%20for%20Powerline.ttf)
* [Spotify](https://www.spotify.com)
* [Send to Kindle](https://www.amazon.com/gp/sendtokindle/mac)
* [Xcode](https://developer.apple.com)
* [Visual Studio](https://www.visualstudio.com/downloads/)
* [VLC](http://www.videolan.org/vlc/index.html)

