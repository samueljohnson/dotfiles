#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTIGNORE='clear:reset:'

alias ls='ls --color=auto'
alias pacman='sudo pacman'
alias srcpac='sudo srcpac'
alias grep='grep -i --color=auto'
alias pdfgrep='pdfgrep -i'
alias projector='kcmshell4 display'
alias inbox="curl -u esamueljohnson --silent "https://mail.google.com/mail/feed/atom" | perl -ne 'print "\t" if /<name>/; print "$2\n" if /<(title|name)>(.*)<\/\1>/;'"
alias kate='kate &> /dev/null'
alias vi='vim'
alias powerup='for i in 0 1 2 3; do cpufreq-set -c $i -g performance; done'
alias powerdown='for i in 0 1 2 3; do cpufreq-set -c $i -g conservative; done'
alias smsindia='/home/kavya/Programming/smsindia/smsindia'
alias locate='locate -i'

source /usr/share/doc/pkgfile/command-not-found.bash

complete -cf sudo
complete -cf man
complete -cf which

#export PROMPT_COMMAND="echo -n [$(date +%k:%m:%S)]"
export PS1="\\u@\h \\W]\\$"
export EDITOR=vi
export XAUTHORITY=/home/kavya/.Xauthority
#export XAUTHORITY=/home/ammu/.Xauthority
export DE=kde
export HOME=/home/kavya

PATH=/usr/local/heroku/bin:$PATH
#PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;20m\]'

fortune -c | cowsay -f tux 

genpasswd() {
local l=$1
       [ "$l" == "" ] && l=20
      tr 			-dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}
