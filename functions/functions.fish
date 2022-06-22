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
	ffmpeg -i $argv[1] -map 0:v -map 0:a:0 -c copy -c:a ac3 -b:a 640k $argv[2]
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

function l		# Replace 'ls' with 'exa' (if available) + some aliases.
	 if command -q exa
	  command exa --icons --color=always $argv
	 else
	  command ls -G $argv
	 end
	end

function ls
         if command -q exa
	  command exa -a --icons --color=always $argv
	 else
	  command ls -G $argv
	 end
	end

function l. 
	 if command -q exa 
	  command exa --icons --color=always -d .* $argv
	 else
	  command ls -d .* $argv
	 end
	end

function la 
	 if command -q exa 
	  command exa -la --icons --color=always $argv
	 else
	  command ls -a $argv
	 end
	end

function ll
	 if command -q exa 
	  command exa -Fhl --icons --color=always $argv
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

#function transfer
#	command curl --upload-file $argv https://transfer.sh/$argv && echo
#	end

function transfer 		# copy transfer URL to clipboard
	 if command -q termux-clipboard-set
	 command curl -s --upload-file $argv https://transfer.sh/$argv -o curl.txt && cat curl.txt | termux-clipboard-set && cat curl.txt && rm -f curl.txt || cat curl.txt || rm -f curl.txt || echo "(error copy to clipboard)"
	else if command -q xclip
#	 command curl -s --upload-file $argv https://transfer.sh/$argv -o curl.txt && cat curl.txt | xclip -sel clip 2>/dev/null && cat curl.txt && rm -f curl.txt || command curl --upload-file $argv https://transfer.sh/$argv && echo "(No clipboard applicationd found)"
	
	 command curl -s --upload-file $argv https://transfer.sh/$argv -o curl.txt && ~/fish_shell/script/.transfer.sh
	# cat curl.txt
	#cat curl.txt | xclip -sel clip 2>/dev/null && echo || echo -e "\n(error copy to clipboard)"
	# rm -f curl.txt
	else
	 command curl --upload-file $argv https://transfer.sh/$argv && echo
	 end
	end
