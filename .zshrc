# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


Plugins=(
git
bundler
dotenv
osx
rakes
zsh-autosuggestion
python
pyenv
npm
z
)

export ZSH="/Users/mikemuponda/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
source /usr/local/Cellar/zsh-syntax-highlighting/0.7.1/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"


export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH=$PATH:$HOME/bin
export PATH=$PATH:/Users/mikemuponda/bin
export PATH="/usr/local/opt/qt/bin:$PATH"
export HOMEBREW_FORCE_BREWED_CURL=1
export LDFLAGS="-L/usr/local/opt/qt/lib"
export CPPFLAGS="-I/usr/local/opt/qt/include"
export LOGNAME=mike
export HISTSIZE=500

#fswatch -0 -l 5 --timestamp ~/.git &
#termsOpen=$(who | grep 'ttys' | wc -l)


#Scripts folder change monitor/git
#nrPrcss=$(jobs -l | grep fswatch | wc -l )
##if ((nrPrcss==0)) && (($termsOpen==1)); then
#fswatch -o -l 43200 /Users/mikemuponda/bin | xargs -n1 -I{} sh ScriptManager.sh &
#PID=$(jobs -l | grep fswatch | cut -c 7-10)
#echo PID IS:$PID
#fi


app(){
 pushd /etc >&-
 cd /Applications && open -a "$(ls | grep -i -m 1 $1 | rev | cut -c 6- | rev)"
 popd >&-
}

alias gg="git " 
alias oo="osascript -e 'tell application "iTerm" to set visible of front window to false' "
alias o="gedit ~/.zshrc && echo OPEN "
alias sauce="source ~/.zshrc && echo CLOSED"
alias push="git push"
alias subl="sublime"
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
alias ls="ls -GwF"
alias ll="ls -lCah"
alias gitname="git config --get remote.origin.url"
alias events="cd /System/Library; ls"
alias auto="/usr/bin/automator"
alias comms="pushd /etc && cat -n /Users/mikemuponda/Desktop/Test/Commands.txt && cd /Users/mikemuponda/Desktop/Test"
alias hotkeys="/usr/libexec/PlistBuddy -c "Print" ~/Library/Preferences/com.apple.symbolichotkeys.plist"
alias prev="!$"
alias keystrokes="open https://eastmanreference.com/complete-list-of-applescript-key-codes"
alias cheatsheet="links https://devhints.io/bash#conditionals"
alias ps="ptxs -ax"
alias c++="open http://www.cplusplus.com/doc/tutorial/"
alias drive="open -a '/Applications/Safari Technology Preview.app' https://drive.google.com/drive/u/1/my-drive"
alias bash="cd /Users/mikemuponda/bin"
alias maxCPU="yes > /dev/null &"
alias slowCPU="killall yes"
alias prcss="links https://kb.iu.edu/d/afnz"
alias du="du -h"
alias df="df -H"
alias cc="pkill -2 -P $(echo $$)"
alias gitt="git rev-parse --is-inside-work-tree"
eval "$(starship init zsh)"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
(( ! ${+functions[p10k]} )) || p10k finalize
export NVM_DIR=/Users/mikemuponda/.nvm
    [ -s /usr/local/opt/nvm/nvm.sh ] && . /usr/local/opt/nvm/nvm.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/mikemuponda/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/mikemuponda/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/mikemuponda/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/mikemuponda/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

