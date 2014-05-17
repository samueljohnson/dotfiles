#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -n "$DISPLAY" ]; then
	        BROWSER=chromium
fi

HISTIGNORE='clear:reset:'

alias ls='ls --color=auto'
alias pacman='sudo pacman'
alias srcpac='sudo srcpac'
alias grep='grep -i --color=auto'
alias pdfgrep='pdfgrep -i'
alias projector='kcmshell4 display'
alias inbox="curl -u esamueljohnson --silent "https://mail.google.com/mail/feed/atom" | perl -ne 'print "\t" if /<name>/; print "$2\n" if /<(title|name)>(.*)<\/\1>/;'"
alias kate='kate &> /dev/null'
alias locate='locate -i'
alias n0cc4='ssh -Y -C n0cc4'
alias android-connect='mtpfs -o allow_other /media/Nexus'
alias android-disconnect='fusermount -u /media/Nexus'
alias nvgui='ssh -Y -C adminsamuel@172.16.0.5 nvgui'

source /usr/share/doc/pkgfile/command-not-found.bash

complete -cf locate
complete -cf time
complete -cf sudo
complete -cf man
complete -cf which
complete -cf optirun
complete -cf pacman
complete -cf pkgfile
complete -cf primusrun
complete -cf n0cc4
complete -cf pkill
complete -cf gopreload-prepare

#export PROMPT_COMMAND="echo -n [$(date +%k:%m:%S)]"
export PS1="\\u@\h \\W]\\$"
export EDITOR=vi
export XAUTHORITY=/home/samuel/.Xauthority
export HOME=/home/samuel
export VGL_READBACK=pbo
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS=' -R '
export HISTSIZE=99999
export WINEARCH=win32
export WINEPREFIX=~/win32
export GOPATH=~/go
export OOO_FORCE_DESKTOP=gnome libreoffice
export PAGER=most
export PATH=$PATH:/home/samuel/.gem/ruby/2.1.0/bin

#PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;20m\]'

fortune -c | cowsay -f tux

genpasswd() {
local l=$1
       [ "$l" == "" ] && l=20
      tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}

# printf 'DE:AD:BE:EF:%02X:%02X\n' $((RANDOM%256)) $((RANDOM%256))
