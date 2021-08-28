fish_add_path -P ~/.local/bin/

function t-remove
	transmission-remote -t $argv -rad
end

function find
	fdfind $argv
end

function ac3
	ffmpeg -i $argv[1] -map 0:v -map 0:a:0 -map 0:s -c copy -c:a ac3 -b:a 640k $argv[2]
end

funcion hardsub
	ffmpeg -i $argv[1] -c:a copy c:v copy -vf "subtitles=$argv[1]:si=0" /server/media/'out.mp4'
end
