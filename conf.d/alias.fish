#!/bin/fish

## Replace 'ls' with 'exa' (if available) + some aliases.

        if which exa >/dev/null;
	    alias l='exa'
            alias ls='exa -a'
            alias l.='exa -d .*'
            alias la='exa -la'
            alias ll='exa -Fhl'
            alias ll.='exa -Fhl -d .*'
	    alias tree='exa --tree'
	else
            alias l='ls -G'
            alias ls='ls -G'
            alias l.='ls -d .*'
            alias la='ls -a'
            alias ll='ls -Fhl'
	    alias ll.='ls -Fhl -d .*'
	end

	# Run backup scrupt if needed
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

	    alias reload='clear && exec fish'

	# Find a command in grep history
	    alias gh='history|grep'

	# Add progressbar when copy files
	    alias cpv='rsync -ah --info=progress2'

	# Weather
	    alias weather="bash -c 'curl wttr.in/Sollentuna?format=3'"
	
	# Bitcoin alias
	    alias btc='curl rate.sx/btc'
	    alias btcs='curl sek.rate.sx/0.00229537btc'

	# Freshly clean termina with neofetch
	    alias start1="neofetch | lolcat && bash -c 'curl wttr.in/sollentuna?format=3'"

# Some tmux-related shell aliases

        # Attaches tmux to the last session; creates a new session if none >
            alias t='tmux attach || tmux new-session'

        # Attaches tmux to a session (example: ta portal)
            alias ta='tmux attach -t'

        # Creates a new session
            alias tn='tmux new-session -t'

        # Lists all ongoing sessions
            alias tl='tmux list-sessions'

	# Raspberry Shortcut 
	    alias pi='ssh pi'

	# Display work log
	    alias work='tail ~/storage/downloads/termux/work_time.txt'

	# Instaloader shurtcut add {SHORT_URL} in the end
	    alias insta-url='instaloader --login=Dan1jel --no-captions --no-metadata-json --no-video-thumbnails --dirname-pattern=/data/data/com.termux/files/home/storage/downloads/termux/instaloader/{profile} --'

	# Shortcut to update all pip applications.
	    alias pip-upgrade='pip freeze --user | cut -d'=' -f1 | xargs -n1 pip install -U'

	# show media information
	    alias ffprobe='ffprobe -hide_banner'
