#!/bin/bash 
#enp's epic .bashrc 
#feel free to copy and edit just pls keep this and the above comments :p 

#If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

#print a nice little welcome banner
echo -e "\e[92m Hello $USER \e[0m,Welcome back"

LCNT=1 # we need this for the $PS2 linecount
export PATH="/bin:/sbin:${HOME}/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:"
#export PATH="${PATH}/usr/local/sbin:/opt/bin:/usr/bin/core_perl:/usr/games/bin:"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

#lets just put are aliases here because theres no need for 2 files when they both can do the same thing

#general program aliases 
alias vi="vim"
alias shred="shred -zf"
alias py2="python2"
alias py3="python3"
alias wget="wget -U 'noleak'"
alias cla="clear"
alias copy="cp -r"
alias delete="rm -rf"
alias edit="vim"

#alias curl="curl --user-agent 'noleak'"


#ls aliases 
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

#grep aliases 
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#sudo aliases
alias _='sudo'
alias _i='sudo -i'
alias please='sudo'
alias fucking='sudo'


#some fun-ctions get it? 
#stfu i know i suck 

function geoip() {
curl https://api.hackertarget.com/geoip/?q="$1" #double qoutes prevents line splitting 
printf "\n" #so we get a newline
}

function asnlookup() {
curl https://api.hackertarget.com/aslookup/?a="$1"
printf "\n" #so we get a newline
}

function weather() {
curl https://wttr.in/"$1"
printf "\n" #so we get a newline
}
function matrix(){
echo -e "\e[1;40m" ; clear ; while :; do echo $LINES $COLUMNS $(( $RANDOM % $COLUMNS)) $(( $RANDOM % 72 )) ;sleep 0.05; done|awk '{ letters="1101100110010@#$&*()%@#$&*[]{}?!€£¥§%"; c=$4; letter=substr(letters,c,1);a[$3]=0;for (x in a) {o=a[x];a[x]=a[x]+1; printf "\033[%s;%sH\033[2;32m%s",o,x,letter; printf "\033[%s;%sH\033[1;37m%s\033[0;0H",a[x],x,letter;if (a[x] >= $1) { a[x]=0; } }}'
}
# colors 
LS_COLORS="rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:"
export $LS_COLORS

#prompt 
PS1='\[\e[0;38;5;51m\]┌[\[\e[0;38;5;76m\]\A \[\e[0;38;5;51m\]\u\[\e[0;38;5;39m\]@\[\e[0;38;5;51m\]\h \[\e[0;38;5;46m\]\w\[\e[0;38;5;51m\]]\n\[\e[0;38;5;51m\]└─╼>\[\e[0m\]'
#┌[14:58 user@host ~/work_dir]
#└─╼>

#prompt 2
PS2=" [\e[0;38;5;51m]$((LCNT=LCNT+1))] "
