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

	# Run backup script if needed
	    alias backup='bash ~/.termux/tasker/rclone_tasker.sh'

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

# Some tmux-related shell aliases

# Attaches tmux to the last session; creates a new session if none exists.
alias t='tmux attach || tmux new-session'

# Attaches tmux to a session (example: ta portal)
alias ta='tmux attach -t'

# Creates a new session
alias tn='tmux new-session'

# Lists all ongoing sessions
alias tl='tmux list-sessions'
