# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

PS1="\n\[\033[33;1m\]\w\[\033[m\]\n\[\033[32m\]\h\[\033[m\] \[\033[35m\]\d\[\033[m\] -> "
export LSCOLORS="gxfxcxdxbxegedabagacad"

set -o vi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

