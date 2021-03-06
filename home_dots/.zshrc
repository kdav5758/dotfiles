
# prompt
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '

##THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="/home/sebas5758/.sdkman"
#[[ -s "/home/sebas5758/.sdkman/bin/sdkman-init.sh" ]] && source "/home/sebas5758/.sdkman/bin/sdkman-init.sh"


if [ -f ~/.shell_aliases ]; then
    source ~/.shell_aliases
fi

## =============================================================================
## C-NET.ORG
## =============================================================================

##This for easy access on https://paste.c-net.org/

#function pastebin()
#{
#    local url='https://paste.c-net.org/'
#    if (( $# )); then
#        local file
#        for file; do
#            curl -s \
#                --data-binary @"$file" \
#                --header "X-FileName: ${file##*/}" \
#                "$url"
#        done
#    else
#        curl -s --data-binary @- "$url"
#    fi
#}
#function pasteget()
#{
#    local url='https://paste.c-net.org/'
#    if (( $# )); then
#        local arg
#        for arg; do
#            curl -s "${url}${arg##*/}"
#        done
#    else
#        local arg
#        while read -r arg; do
#            curl -s "${url}${arg##*/}"
#        done
#    fi
#}

## =============================================================================
## GitHub & Git
## =============================================================================

##-------------------=== Git aliases ===-------------------------------
#alias 1tree='git log --all --decorate --oneline --graph'
#alias 2tree='git log --all --decorate --graph'
#alias ggs="git status"
#alias ggch="git checkout"
#alias ggpush="git push origin main"
#alias ggpull="git pull origin main"
#alias ggremote="git remote -v"  # check all remotes
#alias ggbranch="git branch -v"  # check all branches


## =============================================================================
## XCLIP
## =============================================================================

##-------------------=== aliases ===-------------------------------
#alias 'c=xclip' #copy
#alias 'cc=xclip -selection clipboard' #copy to clipboard
#alias 'v=xclip -o' #paste

## =============================================================================
## CHANGING CURSOR
## =============================================================================

##-------------------=== aliases ===-------------------------------
#alias line='echo -e "\033[5 q"'         #blinking pipe bar
#alias nbline='echo -e "\033[6 q"'       #not blinking pipe bar
#alias block='echo -e "\033[1 q"'        #blinking block
#alias nbblock='echo -e "\033[2 q"'      #not blinking block
#alias uscore='echo -e "\033[3 q"'       #blinking underscore
#alias nbuscore='echo -e "\033[4 q"'     #not blinking underscore

## =============================================================================
## PYTHON
## =============================================================================

#alias python="python3.8"

## =============================================================================
## JAVA
## =============================================================================

## visit this links in case you want to install java:
##   https://www.linode.com/docs/guides/how-to-install-openjdk-on-ubuntu-18-04/


##-------------------=== aliases ===-------------------------------
#alias cjava='update-alternatives --config java' #change java version
#alias scjava='sudo update-alternatives --config java' #change java version

##-------------------=== classpath(s) ===-------------------------------
##classpath for java (refer to linode for more info)
## in case you are getting an error or something with this whenever you open a new terminal session
## it's because you don't have java installed, and like so, this symblink does not work. If this is
## your case comment out the line below this comment.
#_MY_JAVA="$(which java)"
#if [ -e "${_MY_JAVA}" ]; then
#    export JAVA_HOME=$(dirname $(dirname $(readlink -f "${_MY_JAVA}")))
#    export PATH=$PATH:$JAVA_HOME/bin
#fi
#unset _MY_JAVA

## =============================================================================
## TERMINAL(S) MANAGEMENT
## =============================================================================

##-------------------=== aliases ===-------------------------------
##terminal aliases
##change default terminal
#alias ctrm='update-alternatives --config x-terminal-emulator'
#alias gksu='pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDRESS'
#alias gksudo='gksu'
#alias sctrm='sudo update-alternatives --config x-terminal-emulator'
#alias dtct_key="xev -event keyboard"
#alias get_gtk='gsettings get org.gnome.desktop.interface gtk-theme'
#alias eco='echo'
#alias rm_crash='echo -e "\nThe following crashes were found and will now be removed:"; ls -l /var/crash/; sleep 1; sudo rm /var/crash/* && echo -e "\nMessage (OK): Succesfully cleared crashes!\nExit Status: $?" || echo -e "\nMessage (FAILED): Nothing removed"'

##-------------------=== cd(s) ===-------------------------------
#alias ..="cd .."
#alias ...="cd ../.."
#alias ....="cd ../../.."
#alias .....="cd ../../../.."
#alias ......="cd ../../../../.."
#alias .......="cd ../../../../../.."
#alias ........="cd ../../../../../../.."
##date formats
#alias simple_date='date +"%d-%m-%y"'


##-------------------=== clear ===-------------------------------
#alias cls="clear"
#alias rlcea="clear"
#alias cle="clear"
#alias ecla="clear"
#alias rclear="clear"
#alias lscelar="clear"
#alias tre="clear"
#alias ceear="clear"
#alias celr="clear"
#alias eclar="clear"
#alias earl="clear"
#alias clsad="clear"
#alias ear="clear"
#alias sclear="clear"
#alias ealr="clear"
#alias lsclear="clear"
#alias cearlc="clear"
#alias earlcea="clear"
#alias clerr="clear"
#alias rclea="clear"
#alias lcas="clear"
#alias clearcd="clear"
#alias ckear="clear"
#alias cela="clear"
#alias earlc="clear"
#alias clearlce="clear"
#alias lear="clear"
#alias caelr="clear"
#alias lcea="clear"
#alias rclea="clear"
#alias caler="clear"
#alias ceaar="clear"
#alias slcea="clear"
#alias cealr="clear"
#alias elar="clear"
#alias earls="clear"
#alias cclear="clear"
#alias clera="clear"
#alias cleraa="clear"
#alias clearra="clear"
#alias claer="clear"
#alias ckelar="clear"
#alias clrea="clear"
#alias clra="clear"
#alias celar="clear"
#alias celalr="clear"
#alias cear="clear"
#alias clea="clear"
#alias cls="clear; ls"
#alias cearl="clear"
#alias cler="clear"
#alias CLEAR="clear"
#alias cleer="clear"
#alias cearlce="clear"
#alias clearr="clear"
#alias lcear="clear"
#alias cealrc="clear"
#alias clar="clear"
#alias cearls="clear"

#alias q="exit"
#alias ks="ls"
#alias LS="ls"
#alias 1getip="ip route get 1.2.3.4 | awk '{print $7}'"
#alias 2getip="hostname -I | awk '{print $1}'"
#alias vom="vim"
#alias co="cd out/; lh; cd .."
#alias hl="lh"
#alias pww="pwd"
#alias getfm="cat /sys/devices/platform/asus-nb-wmi/throttle_thermal_policy"
#alias getfanmode="cat /sys/devices/platform/asus-nb-wmi/throttle_thermal_policy"
#alias gfm="cat /sys/devices/platform/asus-nb-wmi/throttle_thermal_policy"

## fan modes:
##    + 2 = silent
##    + 0 = balance
##    + 1 = turbo


##And some for commonly used variations of ls (and typos):
#alias ll="ls -l"
#alias lo="ls -o"
#alias lh="ls -lha"
#alias la="ls -la"
#alias sl="ls"
#alias l='ls -CF'
#alias s="ls"



##mn: if you can't remember something use:
##history | grep foo
##this is for searching for 'foo'

## This is GOLD for finding out what is taking so much space on your drives!
#alias diskspace="du -S | sort -n -r |more"

## Command line mplayer movie watching for the win.
##alias mp="mplayer -fs"

## Show me the size (sorted) of only the folders in this directory
#alias dicts="find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn"

##rsync
#alias rsync_code="sudo rsync -av /home/sebas5758/code/ code1/"

## =============================================================================
## Terminal General
## =============================================================================
#alias so='source'
#alias thisd='xdg-open .'    # open current directory in file explorer
#alias tuf_info='sudo dmidecode | grep "BIOS Inf\|Board Inf" -A 3'
#alias grep='grep --color=auto'
#alias fgrep='fgrep --color=auto'
#alias egrep='egrep --color=auto'
#alias tmp="cd /tmp"

## =============================================================================
## LUA
## =============================================================================

##-------------------=== aliases ===-------------------------------
#alias lau="lua"
#alias ual="lua"
#alias aul="lua"
#alias wlua="rlwrap lua"
#alias xampp='gksu /opt/lampp/manager-linux-x64.run'
#alias mp='mvn package'
#alias wq='wmctrl -r 'Alacritty' -b toggle,fullscreen'

## =============================================================================
## VIEWING & EDITING FILES
## =============================================================================

##-------------------=== rust-bat ===-------------------------------
#alias bca='batcat'

##-------------------=== Terminal Editors ===-------------------------------
#alias nv='nvim'

##-------------------=== Exa ===-------------------------------
#alias fe='exa -l -a --icons --sort=size --colour=auto --time-style=long-iso -F'
#alias ef='fe'
#alias fl='exa -F'

##-------------------=== w/ Vim ===-------------------------------

#alias ef_systemd='sudo vim /etc/systemd/system.conf'
#alias ef_kitty='vim ~/.config/kitty/kitty.conf'
#alias ef_bash='vim ~/.bashrc'
#alias ef_vim='vim ~/.vimrc'
#alias ef_nvim='vim ~/.config/nvim/init.vim'
#alias ef_ss='vim ~/.config/starship.toml'

##-------------------=== w/ Nvim ===-------------------------------

#alias efn_systemd='sudo nvim /etc/systemd/system.conf'
#alias efn_kitty='nvim ~/.config/kitty/kitty.conf'
#alias efn_bash='nvim ~/.bashrc'
#alias efn_vim='nvim ~/.vimrc'
#alias efn_nvim='nvim ~/.config/nvim/init.vim'
#alias efn_ss='nvim ~/.config/starship.toml'
#alias efn_ala='nvim ~/.config/alacritty/alacritty.yml'

##-------------------=== Cat-ting ===-------------------------------
#alias ct_bash="cat ~/.bashrc"
#alias ct_vim="cat ~/.vimrc"
#alias ct_kitty="cat ~/.config/kitty/kitty.conf"
#alias ct_nvim='cat ~/.config/kitty/kitty.conf'


## setterm -foreground green -store
##
##if [ "$TERM" = "linux" ]; then
##    echo -en "\e]P0232323" #black
##    echo -en "\e]P82B2B2B" #darkgrey
##    echo -en "\e]P1D75F5F" #darkred
##    echo -en "\e]P9E33636" #red
##    echo -en "\e]P287AF5F" #darkgreen
##    echo -en "\e]PA98E34D" #green
##    echo -en "\e]P3D7AF87" #brown
##    echo -en "\e]PBFFD75F" #yellow
##    echo -en "\e]P48787AF" #darkblue
##    echo -en "\e]PC7373C9" #blue
##    echo -en "\e]P5BD53A5" #darkmagenta
##    echo -en "\e]PDD633B2" #magenta
##    echo -en "\e]P65FAFAF" #darkcyan
##    echo -en "\e]PE44C9C9" #cyan
##    echo -en "\e]P7E5E5E5" #lightgrey
##    echo -en "\e]PFFFFFFF" #white
##    clear #for background artifacting
##fi
export PATH=$HOME/.config/nvcode/utils/bin:$PATH
