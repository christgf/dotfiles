#!/usr/bin/env zsh

export LANG=en_US.UTF-8
export LC_CTYPE=UTF-8

# zsh
export ZDOTDIR="$HOME/.zsh"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000
export ZSH_COMPDUMP="$ZDOTDIR/.zcompdump"

# less
export LESS="-R" 	# Repaint the screen, discarding any buffered input.
export LESSHISTFILE="-" # No history file.

# Homebrew
# eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export MANPATH="/opt/homebrew/share/man:$MANPATH"
export INFOPATH="/opt/homebrew/share/info:$INFOPATH"
export HOMEBREW_NO_INSTALL_UPGRADE=1 # Do NOT auto-upgrade formula if already installed but outdated.
export HOMEBREW_NO_INSTALL_CLEANUP=1 # Do NOT brew cleanup for installed formulae, or every 30 days.
#export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=1 # Do NOT upgrade/reinstall outdated dependents or broken linkage.

# GPG
export GPG_TTY=$(tty)

# pipx
export PATH="$PATH:$HOME/.local/bin"

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8) # Default SDK is v1.8
export PATH="$PATH:$JAVA_HOME/bin"

# PHP
export PHP_PATH="/opt/homebrew/opt/php@7.4"
export PATH="$PATH:$PHP_PATH/bin:$PHP_PATH/sbin"

# Go
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$(go env GOPATH)/bin"

# Rust
export RUSTUP_HOME="$HOME/rust/.rustup"
export CARGO_HOME="$HOME/rust/.cargo"
export PATH="$PATH:$CARGO_HOME/bin"

# JetBrains Toolbox
export JETBRAINS_TOOLBOX_SCRIPTS="/Users/G/Library/Application Support/JetBrains/Toolbox/scripts"
export PATH="$PATH:$JETBRAINS_TOOLBOX_SCRIPTS"

# AWS
#
# These could (should?) be overwritten by ~/.zsh/.zshrc or .aws/config.
#export AWS_REGION=us-east-1
#export AWS_ACCESS_KEY_ID=key
#export AWS_SECRET_ACCESS_KEY=secret

# To use asdf, add the following line to your ~/.zshrc:
#  . /opt/homebrew/opt/asdf/libexec/asdf.sh
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Bun - Javascript
#
export BUN_INSTALL="$HOME/.bun" 
export PATH="$BUN_INSTALL/bin:$PATH"

# buf - https://buf.build/
#
export BUF_EXECUTABLE="/Users/G/go/bin/buf"

