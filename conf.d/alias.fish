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
	    alias reload='/usr/bin/clear && exec fish'

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

	# Freshly clean terminal with ascii art
	    alias ascii='~/./termux-backup/good_scripts/ascii.sh br'

	# Freshly clean terminal with NSFW ascii art
	    alias asciix='~/./termux-backup/good_scripts/ascii.sh'

	### Some tmux-related shell aliases ###

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

	# Tmux script to auto-load panes and detach for Tasker
	    alias tasker-tmux='~/.dotfiles/scripts/tmux_tasker.sh'

	# Script to load Tmux-panes
	    alias load-tmux='~/.dotfiles/scripts/tmux.sh'

	# New connection with fish / bash shell
	    alias ssh_fish='~/termux-backup/good_scripts/ssh_fish.sh'

	# Raspberry Server Shortcut 
	    alias pi='ssh -t -p 4404 pi@bejkon.duckdns.org "/usr/bin/clear;fish"'
#	    alias pi='ssh -t -p 4404 pi@bejkon.duckdns.org "~/termux-backup/good_scripts/ssh_fish.sh"'

	# Raspberry Zero Shortcut 
	    alias zero='ssh -t -p 4405 pi@bejkon2.duckdns.org "/usr/bin/clear;bash"'
#	    alias zero='ssh -t -p 4405 pi@bejkon2.duckdns.org "~/termux-backup/good_scripts/ssh_fish.sh"'

	# Chromebook laptop Shortcut 
	    alias lulu='ssh -t -p 4406 danijel@bejkonlulu.duckdns.org "/usr/bin/clear;fish"'
#	    alias lulu='ssh -t -p 4406 danijel@bejkonlulu.duckdns.org "~/termux-backup/good_scripts/ssh_fish.sh"'

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
	    alias t-add="transmission-remote http://bejkon.duckdns.org:9091/transmission -n Dan1jel:Paras1t3 -a -s"

	# Check torrent stats
	    alias t-stats='transmission-remote http://bejkon.duckdns.org:9091/transmission -n Dan1jel:Paras1t3 -st && echo'

	# Torrent overal stats/conf
	    alias t-conf='transmission-remote http://bejkon.duckdns.org:9091/transmission -n Dan1jel:Paras1t3 -si && echo'

	# Remote see active torrent-list
	    alias t-watch="watch -t -c -d 'transmission-remote http://bejkon.duckdns.org:9091/transmission -n Dan1jel:Paras1t3 -l'"

	# localy see active torrent-list
 	    alias t-watch-l="watch -t -c -d 'transmission-remote -n Dan1jel:Paras1t3 -l'"

	# full backup script
	    alias full-backup='~/.dotfiles/scripts/./tmux_backup.sh'

	# full backup of RaspbianOS with nohup
	    alias nohup-backup='~/.dotfiles/scripts/nohup_backup.bash'

	# Termux setup script
	    alias setup='~/termux-backup/setup.sh'

	# Pipe-screensaver
	    alias pipe-saver='pipes.sh -t2 -f20 -p2'

	# ntfy.sh alias to run script
	    alias ntfy='~/fish-prompt/script/ntfy.sh'
   
	# git shortcut
	    alias git_all="git add --all && git commit -m 'update files' && git push"

	# Hardsub script
	    alias hardsub="~/./termux-backup/good_scripts/hardsub.bash"

	# Custom neofetch script with ascii art
	    alias nf="~/./termux-backup/good_scripts/neofetch.sh ap"
	
	# Custom neofetch script with NSFW ascii art
	    alias nfx="~/./termux-backup/good_scripts/neofetch.sh"

	# Send command to trigger tmate script via IFTTT applet > Tasker profile
	    alias ifttt_tmate='~/fish-prompt/script/ifttt_tmate.sh'

	# Send command to trigger tmate script via ntfy notification > Tasker profile.
	    alias ntfy_tmate='~/fish-prompt/script/ntfy_tmate.sh'

	# Allow External Apps via Termux
	    alias termux-external-apps-allow="~/./termux-backup/good_scripts/external-apps-allow.bash"

	# Deny External Apps via Termux
	    alias termux-external-apps-deny="~/./termux-backup/good_scripts/external-apps-deny.bash"
