#Additional script/execution folders
export PATH=$PATH:/Users/bryan.kahlig/bin

#########from original bash_profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#########from original bash profile

########from original bashrc
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
########from original bashrc

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

#Eclipse SDK Path
export ECLIPSESDK=/Users/bryan.kahlig/apps/adt-bundle-mac-x86_64-20131030/sdk
export PATH=$PATH:$ECLIPSESDK/platform-tools

#GL Libraries for emulator execution
export LD_LIBRARY_PATH=$ECLIPSESDK/tools/lib

#file listing
export CLICOLOR=1
#xport LSCOLORS=xxxxxxxxXxxxxxxxxxxxxx
export LSCOLORS=gxBxhxDxcxhxhxhxhxcxcx
#alias ls='ls -al --group-directories-first'
alias ll='ls -FGlAhp'
alias mtr='sudo /usr/local/sbin/mtr'

function rfind() { find . -name "$@" -print ;}
function pcat()  { cat "$@" | pbcopy ;}
function sgrep() { grep -Ir --include *.scala "$@" .;}

# Regular Colors
txt_black="\[\033[0;30m\]" # Black
txt_red="\[\033[0;31m\]" # Red
txt_green="\[\033[0;32m\]" # Green
txt_yellow="\[\033[0;33m\]" # Yellow
txt_blue="\[\033[0;34m\]" # Blue
txt_purple="\[\033[0;35m\]" # Purple
txt_cyan="\[\033[0;36m\]" # Cyan
txt_white="\[\033[0;37m\]" # White

# High Intensty
hi_txt_black="\[\033[0;90m\]" # Black
hi_txt_red="\[\033[0;91m\]" # Red
hi_txt_green="\[\033[0;92m\]" # Green
hi_txt_yellow="\[\033[0;93m\]" # Yellow
hi_txt_blue="\[\033[0;94m\]" # Blue
hi_txt_purple="\[\033[0;95m\]" # Purple
hi_txt_cyan="\[\033[0;96m\]" # Cyan
hi_txt_white="\[\033[0;97m\]" # White

# Background
bg_black="\[\033[40m\]" # Black
bg_red="\[\033[41m\]" # Red
bg_green="\[\033[42m\]" # Green
bg_yellow="\[\033[43m\]" # Yellow
bg_blue="\[\033[44m\]" # Blue
bg_purple="\[\033[45m\]" # Purple
bg_cyan="\[\033[46m\]" # Cyan
bg_white="\[\033[47m\]" # White

# High Intensty backgrounds
hi_bg_black="\[\033[0;100m\]" # Black
hi_bg_red="\[\033[0;101m\]" # Red
hi_bg_green="\[\033[0;102m\]" # Green
hi_bg_yellow="\[\033[0;103m\]" # Yellow
hi_bg_blue="\[\033[0;104m\]" # Blue
hi_bg_purple="\[\033[10;95m\]" # Purple
hi_bg_cyan="\[\033[0;106m\]" # Cyan
hi_bg_white="\[\033[0;107m\]" # White
if [ "$PS1" ]; then
    if [[ $UID -eq 0 ]]; then
      PS1="$red[\t] \u@\h:\w > "
    else
      PS1="$hi_txt_cyan[\t] $txt_cyan\w > $txt_green"
    fi
    #export PROMPT_COMMAND="echo -n \[\$(date +%H:%M:%S)\]"
    export PS1=$PS1
    #export PS1=" "$PS1"\[\e]30;\u@\h\a\]"
fi

if [ -f /usr/local/share/gitprompt.sh ]; then
	GIT_PROMPT_THEME=Default
	. /usr/local/share/gitprompt.sh
fi

GIT_PROMPT_ONLY_IN_REPO=1

#Welcome message
#echo Hello my lord and master!  Your present working directory is $PWD
#echo
#fortune | cowsay

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
