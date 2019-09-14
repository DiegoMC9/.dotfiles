#
# ~/.bashrc
#

#Ignora duplicados en el historial de comandos
export HISTCONTROL=ignoredups
#export HISTCONTROL=ignoreboth:erasedups
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -a --color=auto'

PS1='╭─\[\033[1;31m\u\]\[\033[1;36m@\]\[\033[1;32m\h\]\[ \033[1;36m\w\]
\[\e[0m\]╰─\$ '

# @begin(34982931)@ - Do not edit these lines - added automatically!
# You should customize CIAOPATH before this chunk if you place bundles in
# places other than ~/.ciao
if [ -x /home/diegomc9/.ciaoroot/master/build/bin/ciao-env ] ; then
  eval "$(/home/diegomc9/.ciaoroot/master/build/bin/ciao-env --sh)"
fi
# @end(34982931)@ - End of automatically added lines.
TRAZA_BSVC = 1
export TRAZA_BSVC
