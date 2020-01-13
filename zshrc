export ZSH="/Users/dcordero/.oh-my-zsh"

ZSH_THEME="agnoster"
CASE_SENSITIVE="true"

plugins=(git bundler)
source $ZSH/oh-my-zsh.sh

# Hide username and hostname in prompt
prompt_context() {}

# Git
alias gitowners='for branch in `git branch -r | grep -v HEAD`;do echo -e `git show --format="%an ---> %ai %ar" $branch | head -n 1` \\t$branch; done | sort -r'

# Thanks Apple
alias cleanDerivedData='rm -rf ~/Library/Developer/Xcode/DerivedData'
alias xcodesucks='killall Xcode; rm -rf ~/Library/Developer/Xcode/DerivedData; rm -rf Pods/ ; pod repo update; pod install ; open -a Xcode'
alias touchBarSucks='killall TouchBarServer; killall ControlStrip; killall Simulator'
alias removeUnavailableSimulators='xcrun simctl delete unavailable'
alias disableKeyboard='sudo kextunload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext'
alias enableKeyboard='sudo kextload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext'

alias useXcodeStable="sudo xcode-select -switch /Applications/Xcode.app"
alias useXcodeBeta="sudo xcode-select -switch /Applications/Xcode-Beta.app"

# Android
alias lolcat='/Applications/Android/sdk/platform-tools/adb logcat | /Applications/Android/sdk/tools/coloredlogcat.py'

# General
alias localserver='ruby -run -e httpd . -p 8000'

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"

# VSCode
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
