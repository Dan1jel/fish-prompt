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

function hardsub
  set input_filename $argv[1]
  set output_filename (echo $input | sed 's/\.[^.]*$//')
  ffmpeg -i "$input_filename" -filter_complex "subtitles='$input_filename':si=0" -c:a copy "$output_filename".mp4
end

for i in *.mkv; ffmpeg -i "$i" -filter_complex "subtitles='$i':si=0" -c:a copy (string split -r -m1 . $i)[1]".mp4";
end
