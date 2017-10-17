
# Terminal Custom Color and Settings
CLICOLOR=1
LSCOLORS=gxfxcxdxbxegedabagacad
export TERM=xterm-color

# Git
alias gitowners='for branch in `git branch -r | grep -v HEAD`;do echo -e `git show --format="%an ---> %ai %ar" $branch | head -n 1` \\t$branch; done | sort -r'

# iOS
alias cleanDerivedData='rm -rf ~/Library/Developer/Xcode/DerivedData'
alias xcodesucks='killall Xcode; rm -rf ~/Library/Developer/Xcode/DerivedData; rm -rf Pods/ ; rm Podfile.lock; pod repo update; pod install ; open -a Xcode'

alias useXcodeStable="sudo xcode-select -switch /Applications/Xcode.app"
alias useXcodeBeta="sudo xcode-select -switch /Applications/Xcode-Beta.app"

# Android
alias lolcat='/Applications/Android/sdk/platform-tools/adb logcat | /Applications/Android/sdk/tools/coloredlogcat.py'

# General
alias ls='ls -G'
alias ll='ls -hl'
alias grep='grep --color=auto'

# Vim
alias vimnt='vim -c "NERDTree"'

# Powerline Shell PS1
function _powerline_ps1() {
    PS1="$(~/.powerline-shell.py $? 2> /dev/null)"
}

PROMPT_COMMAND="_powerline_ps1; $PROMPT_COMMAND"

# Lockscreen
alias lockscreen='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# Fastlane
export PATH="$HOME/.fastlane/bin:$PATH"

# Ruby rbenv
eval "$(rbenv init -)"

# VSCode
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
