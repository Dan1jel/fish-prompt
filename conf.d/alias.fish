#!/bin/fish

	# Run backup scrupt if needed
	    alias backup='bash ~/.termux/tasker/rclone_tasker.sh'

	# Easier navigation: .., ..., ...., ....., ~ and -
	    alias ..="cd .."
	    alias cd..="cd .."
	    alias ...="cd ../.."
	    alias ....="cd ../../.."
	    alias .....="cd ../../../.."
	    alias ......="cd ../../../../.."

	# mkdir creates all parants folder
	    alias mkdir='mkdir -pv'

	# Confirmations
	    alias mv='mv -i'
	    alias cp='cp -i'
	    alias rm='rm -i'
	    alias ln='ln -i'

	# Get week number
	    alias week='date +%V'

	# Reload the shell (i.e. invoke as a login shell)
	    alias reload='exec fish'

	# Find a command in grep history
	    alias gh='history|grep'

	# Add progressbar when copy files
	    alias cpv='rsync -ah --info=progress2'

	# Weather
	    alias weather="bash -c 'curl wttr.in/Sollentuna?format=3'"
	
	# Bitcoin alias
	    alias btc='curl rate.sx/btc'
	   #alias btcs='curl -s sek.rate.sx/0.00229537btc | cut -d '.' -f 1'
	   #alias btcs='/bin/btcs.sh'
	    alias btcs='~/./termux-backup/good_scripts/btcs.sh'

	# Freshly clean terminal with stats
	    alias stats='~/./termux-backup/good_scripts/stats.sh'

# Some tmux-related shell aliases

        # Attaches tmux to the last session; creates a new session if none >
            alias t='tmux attach || tmux new-session'

        # Attaches tmux to a session (example: ta portal)
            alias ta='tmux attach -t'

        # Creates a new session
            #alias tn='tmux new-session -t'
	    alias tn='tmux new -s'

        # Lists all ongoing sessions
            alias tl='tmux list-sessions'

	# Kill tmux session by name ex. 'tk test'
	    alias tk='tmux kill-session -t'

	# Script to load Tmux-panes
	    alias load-tmux='~/./termux-backup/good_scripts/tmux.sh'

	# Raspberry Shortcut 
	    alias pi='ssh -p4404 pi@bejkon.duckdns.org'

	# Raspberry Shortcut 
	    alias zero='ssh -p4405 pi@bejkon2.duckdns.org'

	# Chromebook laptop Shortcut 
	    alias lulu='ssh -p4406 danijel@bejkonlulu.duckdns.org'

	# Display work log
	    alias work='tail ~/storage/downloads/termux/work_time.txt'

	# Instaloader shurtcut add {SHORT_URL} in the end
	    alias insta-url='instaloader --login=Dan1jel --no-captions --no-metadata-json --no-video-thumbnails --dirname-pattern=/data/data/com.termux/files/home/storage/downloads/termux/instaloader/{profile} --'

	# Shortcut to update all pip applications.
	    alias pip-upgrade='pip freeze --user | cut -d'=' -f1 | xargs -n1 pip install -U'

	# show media information
	    alias ffprobe='ffprobe -hide_banner'

	# show media information nr.2
	    alias media='~/./termux-backup/good_scripts/media.sh'

	# Clear terminal
	    alias clear='~/./termux-backup/good_scripts/clear.sh'

	# List all torrents in Transmission
	    alias t-list="transmission-remote http://bejkon.duckdns.org:9091/transmission -n Dan1jel:Paras1t3 -l"

	# Add torrent file
	    alias t-add="transmission-remote http://bejkon.duckdns.org:9091/transmission -n Dan1jel:Paras1t3 -a"

	# Check torrent stats
	    alias t-stats='transmission-remote http://bejkon.duckdns.org:9091/transmission -n Dan1jel:Paras1t3 -st && echo'

	# Torrent overal stats/conf
	    alias t-conf='transmission-remote http://bejkon.duckdns.org:9091/transmission -n Dan1jel:Paras1t3 -si && echo'

	# full backup script
	    alias full-backup='~/.dotfiles/scripts/./tmux_backup.sh'

	# Termux setup script
	    alias setup='~/termux-backup/setup.sh'

	# Pipe-screensaver
	    alias pipe-saver='pipes.sh -t2 -f20 -p2'

	# ntfy.sh alias to run script
	    alias ntfy='~/fish-prompt/script/ntfy.sh'
   
	# git shortcut
	    alias git_all="git add --all && git commit -m 'update files' && git push"
