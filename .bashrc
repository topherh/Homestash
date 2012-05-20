#  .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then 
    . /etc/bashrc
fi

case $- in
*i*)
   # Put interactive-only Bourne shell compatible login startup here.

   # don't put duplicate lines in the history. See bash(1) for more options
   # don't overwrite GNU Midnight Commander's setting of `ignorespace'.
   export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
   # ... or force ignoredups and ignorespace
   export HISTCONTROL=ignoreboth

   # append to the history file, don't overwrite it
   shopt -s histappend

   # Pretty grep
   export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'

   # Include any aliases
   if [ -f ~/.bash_aliases ]; then
       . ~/.bash_aliases
   fi

   # enable color support of ls and also add handy aliases
   if [ -x /usr/bin/dircolors ]; then
       eval "`dircolors -b`"
       alias ls='ls --color=auto'
   else
       alias ls='ls -G'
   fi

   # enable programmable completion features (you don't need to enable
   # this, if it's already enabled in /etc/bash.bashrc and /etc/profile
   # sources /etc/bash.bashrc).
   if [ -f /etc/bash_completion ]; then
       . /etc/bash_completion
   fi

   # keep things for the group
   umask 002

   # Machine specific
   if [ -f ~/.host_bashrc ]; then
       . ~/.host_bashrc
   fi

esac

