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
   HOST=`hostname -a`
   if [ -f ~/.$HOST_bashrc ]; then
       . ~/.$HOST_bashrc
   fi

esac

