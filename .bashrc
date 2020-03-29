export PATH=$PATH:~/.android-sdk-macosx/platform-tools/
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH=$PATH:$HOME/bin
export PATH=$PATH:/Users/mikemuponda/bin
export PATH=$PATH:/Users/mikemuponda/Project/flutter/bin
export PATH=/usr/local/gcc-8.1/bin:$PATH
export PATH="/usr/local/opt/qt/bin:$PATH"
export HOMEBREW_FORCE_BREWED_CURL=1
export LDFLAGS="-L/usr/local/opt/qt/lib"
export CPPFLAGS="-I/usr/local/opt/qt/include"
export LOGNAME=mike
export HISTSIZE=500

#fswatch -0 -l 5 --timestamp ~/.git &
termsOpen=$(who | grep 'ttys' | wc -l)

#Scripts folder change monitor/git
nrPrcss=$(jobs -l | grep fswatch | wc -l )
if ((nrPrcss==0)) && (($termsOpen==1)); then
fswatch -o -l 43200 /Users/mikemuponda/bin | xargs -n1 -I{} sh ScriptManager.sh &
PID=$(jobs -l | grep fswatch | cut -c 7-10)
echo PID IS:$PID
fi


app(){
 pushd /etc >&-
 cd /Applications && open -a "$(ls | grep -i -m 1 $1)"
 popd >&-
}

alias o="open ~/.bashrc && echo OPEN"
alias s="source ~/.bashrc && echo CLOSED"
alias push="git push"
alias subl="sublime"
alias cdgit="cd /Users/mikemuponda/Desktop/github/MicroMouse-Algorithm-Tester"
alias txt="open -e"
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias sys="systemsetup"
alias push="push /etc"
alias cl="clear"
alias h="history"
alias mv="mv -i"
alias rm="rm -i"
alias cp="cp -i"
alias ln="ln -i"
alias su="sudo -i"
alias reboot="sudo /sbin/reboot"
alias ll="ls -la"
alias gitname="git config --get remote.origin.url"
alias apple="open https://nathangrigg.com/images/2012/AppleScriptLanguageGuide.pdf"
alias events="cd /System/Library; ls"
alias auto="/usr/bin/automator"
alias comms="pushd /etc && cat -n /Users/mikemuponda/Desktop/Test/Commands.txt && cd /Users/mikemuponda/Desktop/Test"
alias hotkeys="/usr/libexec/PlistBuddy -c "Print" ~/Library/Preferences/com.apple.symbolichotkeys.plist"
alias prev="!$"
alias keystrokes="open https://eastmanreference.com/complete-list-of-applescript-key-codes"
alias julia="exec '/Applications/Julia-1.0.app/Contents/Resources/julia/bin/julia'"
alias cheatsheet="links https://devhints.io/bash#conditionals"
alias ps="ptxs -ax"
alias wifi="open https://www.redbooks.ibm.com/redbooks/pdfs/gg243376.pdf"
alias c++="open http://www.cplusplus.com/doc/tutorial/"
alias drive="open -a '/Applications/Safari Technology Preview.app' https://drive.google.com/drive/u/1/my-drive"
alias bash="cd /Users/mikemuponda/bin"
alias maxCPU="yes > /dev/null &"
alias slowCPU="killall yes"
alias prcss="links https://kb.iu.edu/d/afnz"
alias du="du -h"
alias df="df -H"
alias cc="pkill -2 -P $(echo $$)"
alias git?="git rev-parse --is-inside-work-tree"