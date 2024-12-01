#fish_add_path -P ~/.local/bin/

function t-remove
	transmission-remote http://bejkon.duckdns.org:9091/transmission -n Dan1jel:Paras1t3 -t $argv -r
	end

function t-remove-a
	transmission-remote http://bejkon.duckdns.org:9091/transmission -n Dan1jel:Paras1t3 -t $argv -rad
	end

function t-start
	transmission-remote http://bejkon.duckdns.org:9091/transmission -n Dan1jel:Paras1t3 -t $argv -s
	end

function t-stop
	transmission-remote http://bejkon.duckdns.org:9091/transmission -n Dan1jel:Paras1t3 -t $argv -S
	end

function ac3
	#ffmpeg -i $argv[1] -map 0:v -map 0:a:0 -map 0:s -c copy -c:a ac3 -b:a 640k $argv[2]
	#ffmpeg -i $argv[1] -map 0:v -map 0:a:0 -c copy -c:a ac3 -b:a 640k $argv[2]
	ffmpeg -i $argv[1] -map 0 -c:v copy -c:a ac3 -c:s copy $argv[2]
	end

function srt
	ffmpeg -i $argv[1] -map 0 -c:v copy -c:a copy -c:s srt $argv[2]
	end

#function ascii 
#	 if count $argv > /dev/null
#	  clear
#	  cat ~/termux-backup/ascii_art/ascii_$argv
#	  echo
#	 else
#	  clear
#	  cat (random choice ~/termux-backup/ascii_art/ascii_**)
#	  echo
#	 end
#	end

function shorturl	# functipn to creat short url
	command	curl "https://is.gd/create.php?format=simple&url=$argv" && echo ""
	end

function cat 		# use bat instead of cat
	 if command -q bat
	  command bat --style=plain $argv
	else if command -q batcat
	  command batcat --style=plain $argv
	else
	  command cat $argv
	 end
	end

function find 		# Replace find with fdfind (fd on termux)
	 if command -q fd
	  command fd $argv
	 else if command -q fdfind
	  command fdfind $argv
	 else
	  command find $argv
	 end
	end

function l		# Replace 'ls' with 'eza' (if available) + some aliases.
	 if command -q eza
	  command eza -F=auto --icons --color=always $argv
	 else
	  command ls --color=auto -FG $argv
	 end
	end

function ls
         if command -q eza
	  command eza -F=auto --icons --color=always -a $argv
	 else
	  command ls --color=auto -FGA $argv
	 end
	end

function l. 
	 if command -q eza 
	  command eza -F=auto --icons --color=always -d .* $argv
	 else
	  command ls --color=auto -Fd .* $argv
	 end
	end

function la 
	 if command -q eza 
	  command eza -F=auto --icons --color=always -la $argv
	 else
	  command ls --color=auto -FhlA $argv
	 end
	end

function ll
	 if command -q eza 
	  command eza -F=auto --icons --color=always -l $argv
	 else
	  command ls --color=auto -Fhl $argv
	 end
	end

function ll.
	 if command -q eza 
	  command eza -F=auto --icons --color=always -ld .* $argv
	 else
	  command ls --color=auto -Fhld .* $argv
	 end
	end

function topgrade_all
	 if test -e ~/.config/topgrade_all.toml
	  command topgrade --config ~/.config/topgrade_all.toml	$argv
	 else
	  command echo "ERROR: No config file found." && return 1 $argv
	 end
        end

function tree
	command eza --tree $argv
	end

function transfer 		# copy transfer URL to clipboard
	if command -q termux-clipboard-set
		command curl -s bashupload.com -T $argv | awk "NR==6" | sed -z 's/\n$//' | termux-clipboard-set
	else if command -q xclip
	    command echo test | xclip -sel clip 2>/dev/null
	    if test $status -eq 0
 	    	command curl -s bashupload.com -T $argv | awk "NR==6" | xclip -sel clip 2>/dev/null
	    else
		echo -e "\e[1;31m[x]\e[0m - Error copy to clipboard! - \e[1;31m[x]\e[0m" 
		command curl -s bashupload.com -T $argv | awk "NR==6" | xclip -sel clip 2>/dev/null
	    end
	else
		command curl -s bashupload.com -T $argv | awk "NR==6"
	end
end

function timg
	if command -q termux-info
	termimage (/usr/bin/ls | shuf -n 1)
	end
end

function kick
	pkill -u -9 $argv
end

function matrix
	if command -q unimatrix
	 unimatrix -a -f -s 97
	else if command -q cmatrix
	 cmatrix
	else
	# echo " * Neither of unimatrix or cmatrix is installed."
        end
end
