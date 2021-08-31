#!/bin/fish

	# Replace 'ls' with 'exa' (if available) + some aliases.

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

	# use bat instead of cat

        if which bat >/dev/null;
	    alias cat='bat --style=plain'
	else
            alias cat='cat'
	end

	# Replace find with fdfind (fd on termux)

        if which fdfind >/dev/null;
	    alias find='fdfind'
	else
            alias find='fd'
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
            alias tn='tmux new-session -t'

        # Lists all ongoing sessions
            alias tl='tmux list-sessions'

	# Script to load Tmux-panes
	    alias load-tmux='~/./termux-backup/good_scripts/tmux.sh'

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

	# show media information nr.2
	    alias media='~/./termux-backup/good_scripts/media.sh'

	# Clear terminal
	    alias clear='~/./termux-backup/good_scripts/clear.sh'

	# List all torrents in Transmission
	    alias t-list="transmission-remote -n 'Dan1jel:Paras1t3' -l"

	# Add torrent file
	    alias t-add="transmission-remote -n 'Dan1jel:Paras1t3' -a"

	# Check torrent stats
	    alias t-stats='transmission-remote -n 'Dan1jel:Paras1t3' -st && echo'

	# Torrent overal stats/conf
	    alias t-conf='transmission-remote -n 'Dan1jel:Paras1t3' -si && echo'

	# full backup script
	    alias full-backup='~/.dotfiles/scripts/./tmux_backup.sh'

	# Hardencode subs with embeded subs within mkv.
	    alias hardsub-mkv='~/.dotfiles/scripts/./hardsub-mkv.sh'

	# Hardencode subs with .ass files and .mp4.
	    alias hardsub-ass='~/.dotfiles/scripts/./hardsub-ass.sh'
	    
	# Hardencode subs with embeded subs within mkv.
	    #alias hardsub-mkv='for i in *.mkv; do ffmpeg -i "$i" -filter_complex "subtitles='$i':si=0" -c:a copy "$i%.*.mp4"; done'

 	# Hardencode subs with .ass files and .mp4.
	    #alias hardsub-ass='for i in *.mp4; do ffmpeg -i "$i" -filter_complex "subtitles='$i%.*.ass'" -c:a copy "$i%.*.v2.mp4"; done'
