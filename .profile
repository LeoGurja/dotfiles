# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

export EDITOR=vim

# Environment Variables
export ANDROID_HOME=~/Android/Sdk
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:/usr/local/bin"
export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/snap/bin"

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

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# go
export GOROOT="/usr/lib/go"
export PATH="$PATH:$GOROOT/bin"

# oracle
export LD_LIBRARY_PATH=/opt/oracle/instantclient_12_2

# brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# gcloud config
if [ -f '/home/gurja/google-cloud-sdk/path.zsh.inc' ]; then . '/home/gurja/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/home/gurja/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/gurja/google-cloud-sdk/completion.zsh.inc'; fi

# gh completion
source ~/.gh-completion.sh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


# rvm
export PATH="$GEM_HOME/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"