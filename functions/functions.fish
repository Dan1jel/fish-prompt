fish_add_path -P ~/.local/bin/

function t-remove
	transmission-remote -t $argv -rad
end
funcsave t-remove

function find
	fdfind $argv
end
funcsave find

function ac3-convert
	ffmpeg -i $argv[1] -map 0:v -map 0:a:0 -map 0:s -c copy -c:a ac3 -b:a 640k $argv[2]
end
funcsave ac3-convert
