#!/bin/fish

## Replace 'ls' with 'exa' (if available) + some aliases.

        if which exa >/dev/null;
            alias l='exa'
            alias ls='exa -a'
            alias l.='exa -d .*'
            alias la='exa -la'
            alias ll='exa -Fhl'
            alias ll.='exa -Fhl -d .*'
	else
            alias l='ls -G'
            alias ls='ls -G'
            alias l.='ls -d .*'
            alias la='ls -a'
            alias ll='ls -Fhl'
	    alias ll.='ls -Fhl -d .*'
	end

	# Run backup scrupt if needed
	    alias backup='sh ~/.termux/tasker/rclone_tasker.sh'

	# Easier navigation: .., ..., ...., ....., ~ and -
	    alias ..="cd .."
	    alias cd..="cd .."
	    alias ...="cd ../.."
	    alias ....="cd ../../.."
	    alias .....="cd ../../../.."
	    alias ......="cd ../../../../.."

	# Get week number
	    alias week='date +%V'

	# Reload the shell (i.e. invoke as a login shell)
	    alias reload='exec $SHELL -l'

	# Find a command in grep history
	    alias gh='history|grep'

	# Add progressbar when copy files
	    alias cpv='rsync -ah --info=progress2'
