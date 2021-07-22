function t-remove
	transmission-remote -t $argv -rad
end

function find
	fdfind $argv
end

fish_add_path -P $HOME/.local/bin/
