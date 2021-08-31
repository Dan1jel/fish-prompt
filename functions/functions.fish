fish_add_path -P ~/.local/bin/

function t-remove
	transmission-remote -t $argv -r
end

function find
	fdfind $argv
end

function ac3
	ffmpeg -i $argv[1] -map 0:v -map 0:a:0 -map 0:s -c copy -c:a ac3 -b:a 640k $argv[2]
end
