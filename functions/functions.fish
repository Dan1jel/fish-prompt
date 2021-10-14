fish_add_path -P ~/.local/bin/

function t-remove
	transmission-remote -n 'Dan1jel:Paras1t3' -t $argv -r
end

function t-remove-all
	transmission-remote -n 'Dan1jel:Paras1t3' -t $argv -rad
end

function t-start
	transmission-remote -n 'Dan1jel:Paras1t3' -t $argv -s
end

function t-stop
	transmission-remote -n 'Dan1jel:Paras1t3' -t $argv -S
end

function find
	fdfind $argv
end

function ac3
	ffmpeg -i $argv[1] -map 0:v -map 0:a:0 -map 0:s -c copy -c:a ac3 -b:a 640k $argv[2]
end

# function hardsub
#   set input_filename $argv[1]
#   set output_filename (echo $input | sed 's/\.[^.]*$//')
#   ffmpeg -i "$input_filename" -filter_complex "subtitles='$input_filename':si=0" -c:a copy "$output_filename".mp4
# end
