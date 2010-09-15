# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then 
    . /etc/bashrc
fi

case $- in
*i*)

   # Put interactive-only Bourne shell compatible login startup here.

   # Include any aliases
   if [ -f ~/.bash_aliases ]; then
       . ~/.bash_aliases
   fi

   # keep things for the group
   umask 002

   # Machine specific
   if [ -f ~/.host_bashrc ]; then
       . ~/.host_bashrc
   fi

esac

