# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# Macports
if [ -d "/opt/local/bin" ] ; then
    PATH="/opt/local/bin:$PATH"
fi

if [ -d "/opt/local/sbin" ] ; then
    PATH="/opt/local/sbin:$PATH"
fi

## cd .homestash;git pull
## cd

PS1="\n\[\033[33;1m\]\w\[\033[m\]\n\[\033[32m\]\h\[\033[m\] \[\033[35m\]\D{%a %H:%M}\[\033[m\] -> "
export LSCOLORS="gxfxcxdxbxegedabagacad"
export CLICOLOR=1

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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
<<<<<<< HEAD

=======
>>>>>>> 999bbee994d40699884f070a6ceac15aa888b1d4
