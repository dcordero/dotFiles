
# Terminal Custom Color and Settings
CLICOLOR=1
LSCOLORS=gxfxcxdxbxegedabagacad
export TERM=xterm-color

# Git
alias gitowners='for branch in `git branch -r | grep -v HEAD`;do echo -e `git show --format="%an ---> %ai %ar" $branch | head -n 1` \\t$branch; done | sort -r'

# Thanks Apple
alias clearDerivedData='rm -rf ~/Library/Developer/Xcode/DerivedData'
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
alias ls='ls -G'
alias ll='ls -hl'
alias grep='grep --color=auto'

alias localserver='ruby -run -e httpd . -p 8000'

# Powerline Shell PS1
function _powerline_ps1() {
    PS1="$(~/.powerline-shell.py $? 2> /dev/null)"
}

PROMPT_COMMAND="_powerline_ps1; $PROMPT_COMMAND"

# Lockscreen
alias lockscreen='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# Fastlane
export PATH="$HOME/.fastlane/bin:$PATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Python
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
alias be="bundle exec"

# VSCode
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

alias ctags='/usr/local/bin/ctags'

export PATH="$HOME/.cargo/bin:$PATH"
