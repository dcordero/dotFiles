
# Terminal Custom Color and Settings
CLICOLOR=1
LSCOLORS=gxfxcxdxbxegedabagacad
export PS1='\[\033[01;37m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export TERM=xterm-color

# Git
alias gitowners='for branch in `git branch -r | grep -v HEAD`;do echo -e `git show --format="%an ---> %ai %ar" $branch | head -n 1` \\t$branch; done | sort -r'

# iOS
alias cleanDerivedData='rm -rf ~/Library/Developer/Xcode/DerivedData'

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
