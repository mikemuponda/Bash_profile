# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mikemuponda/.oh-my-zsh"

Plugins=(
git
bundler
dotenv
osx
rake
zsh-autosuggestion
python
pyenv
npm
z
)

source $ZSH/oh-my-zsh.sh
source /Users/mikemuponda/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"


ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
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

alias o="gedit ~/.zshrc && echo OPEN"
alias s="source ~/.zshrc && echo CLOSED"
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
alias ls="ls -GwF"
alias ll="ls -lCah"
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
alias gitt="git rev-parse --is-inside-work-tree"
eval "$(starship init zsh)"
