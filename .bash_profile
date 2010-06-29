alias ls='ls -G'
alias ll='ls -lh'
alias la='ls -liah'
export LSCOLORS="gxfxcxdxbxegedabagacad"
export PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

# MacPorts Installer addition on 2010-06-15_at_09:50:50: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

set -o vi
