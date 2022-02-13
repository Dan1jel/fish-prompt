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

function ac3
	#ffmpeg -i $argv[1] -map 0:v -map 0:a:0 -map 0:s -c copy -c:a ac3 -b:a 640k $argv[2]
	ffmpeg -i $argv[1] -map 0:v -map 0:a:0 -c copy -c:a ac3 -b:a 640k $argv[2]
end

function stats 
	cat ~/termux-backup/ascii_art/ascii_$argv[1]
end

  # use bat instead of cat
function cat 		# use bat instead of cat
	if command -q bat
	  command bat --style=plain $argv
	else
	  command cat $argv
	end
end

function find 		# Replace find with fdfind (fd on termux)
	if command -q fd
	  command fd $argv
	else
	  command find $argv
	end
end

function l		# Replace 'ls' with 'exa' (if available) + some aliases.
	if command -q exa
	  command exa $argv
	else
	  command ls -G $argv
	end
end

function ls
        if command -q exa
	  command exa -a $argv
	else
	  command ls -G $argv
	end
end

function l. 
	if command -q exa 
	  command exa -d .* $argv
	else
	  command ls -d .* $argv
	end
end

function la 
	if command -q exa 
	  command exa -la $argv
	else
	  command ls -a $argv
	end
end

function ll
	if command -q exa 
	  command exa -Fhl $argv
	else
	  command ls -Fhl $argv
	end
end

function ll.
	if command -q exa 
	  command exa -Fhl -d .* $argv
	else
	  command ls -Fhl -d .* $argv
	end
end

function tree
	command exa --tree $argv
end
