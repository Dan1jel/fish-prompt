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
	  command eza --icons --color=always $argv
	 else
	  command ls -G $argv
	 end
	end

function ls
         if command -q eza
	  command eza -a --icons --color=always $argv
	 else
	  command ls -G $argv
	 end
	end

function l. 
	 if command -q eza 
	  command eza --icons --color=always -d .* $argv
	 else
	  command ls -d .* $argv
	 end
	end

function la 
	 if command -q eza 
	  command eza -la --icons --color=always $argv
	 else
	  command ls -a $argv
	 end
	end

function ll
	 if command -q eza 
	  command eza -Fhl --icons --color=always $argv
	 else
	  command ls -Fhl $argv
	 end
	end

function ll.
	 if command -q eza 
	  command eza -Fhl -d .* $argv
	 else
	  command ls -Fhl -d .* $argv
	 end
	end

function tree
	command eza --tree $argv
	end

function transfer 		# copy transfer URL to clipboard
	if command -q termux-clipboard-set
	    	#command curl -sD - --upload-file $argv https://transfer.sh/$argv | grep 'transfer' | awk -F'/' 'NR==1{print "Delete-url-token: "$6};END{print $0}' > curl_transfer.log && tail -n1 curl_transfer.log | sed -z 's/\n$//' | termux-clipboard-set && cat curl_transfer.log
		command curl -sD - --upload-file $argv https://transfer.sh/$argv | grep -i -E 'transfer\.sh|x-url-delete' > curl_transfer.log && tail -n1 curl_transfer.log | sed -z 's/\n$//' | termux-clipboard-set && cat curl_transfer.log
	else if command -q xclip
	    command echo test | xclip -sel clip 2>/dev/null
	    if test $status -eq 0
		#command curl -sD - --upload-file $argv https://transfer.sh/$argv | grep 'transfer' | awk -F'/' 'NR==1{print "Delete-url-token: "$6};END{print $0}' > curl_transfer.log && tail -n1 curl_transfer.log | sed -z 's/\n$//' | xclip -sel clip 2>/dev/null; cat curl_transfer.log
 	    	command curl -sD - --upload-file $argv https://transfer.sh/$argv | grep -i -E 'transfer\.sh|x-url-delete' > curl_transfer.log && tail -n1 curl_transfer.log | sed -z 's/\n$//' | xclip -sel clip 2>/dev/null; cat curl_transfer.log
	    else
		echo -e "\e[1;31m[x]\e[0m - Error copy to clipboard! - \e[1;31m[x]\e[0m" 
		#command curl -sD - --upload-file $argv https://transfer.sh/$argv | grep 'transfer' | awk -F'/' 'NR==1{print "Delete-url-token: "$6};END{print $0}' > curl_transfer.log && tail -n1 curl_transfer.log | xclip -sel clip 2>/dev/null; cat curl_transfer.log
		command curl -sD - --upload-file $argv https://transfer.sh/$argv | grep -i -E 'transfer\.sh|x-url-delete' > curl_transfer.log && tail -n1 curl_transfer.log | xclip -sel clip 2>/dev/null; cat curl_transfer.log
	    end
	else
	    	 #command curl -sD - --upload-file $argv https://transfer.sh/$argv | grep 'transfer' | awk -F'/' 'NR==1{print "Delete-url-token: "$6};END{print $0}'
		 command curl -sD - --upload-file $argv https://transfer.sh/$argv | grep -i -E 'transfer\.sh|x-url-delete'
	end
end

function transfer-delete 	# delete uploaded transfer with URL
	curl -X DELETE $argv
end 

function x-url-delete		# delete uploaded transfer with URL
	curl -X DELETE $argv
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

function pi4
    if command -q termux-info
        command termux-wifi-connectioninfo | grep -q 'Google_Wifi' 2>/dev/null
        if test $status -eq 0
            ssh -t -p 4441 pi@192.168.87.23 '/usr/bin/clear;fish'
        else
            ssh -t -p 4441 pi@bejkon4.duckdns.org '/usr/bin/clear;fish'
        end
	#    end
    else if command sudo iwgetid | grep -q 'Google_Wifi' 2>/dev/null
        if test $status -eq 0
            ssh -t -p 4441 pi@192.168.87.23 '/usr/bin/clear;fish'
        else
            ssh -t -p 4441 pi@bejkon4.duckdns.org '/usr/bin/clear;fish'
        end
	#    end
    else if command sudo ifconfig | grep -q '192.168.87' 2>/dev/null
        if test $status -eq 0
            ssh -t -p 4441 pi@192.168.87.23 '/usr/bin/clear;fish'
        else
            ssh -t -p 4441 pi@bejkon4.duckdns.org '/usr/bin/clear;fish'
        end
    end
end

function fire
    if command -q termux-info
        command termux-wifi-connectioninfo | grep -q 'Google_Wifi' 2>/dev/null
        if test $status -eq 0
            ssh -t -p 4405 pi@192.168.87.250 '/usr/bin/clear;bash'
        else
            ssh -t -p 4405 pi@bejkon2.duckdns.org '/usr/bin/clear;bash'
        end
	#    end
    else if command sudo iwgetid | grep -q 'Google_Wifi' 2>/dev/null
        if test $status -eq 0
            ssh -t -p 4405 pi@192.168.87.250 '/usr/bin/clear;bash'
        else
            ssh -t -p 4405 pi@bejkon4.duckdns.org '/usr/bin/clear;bash'
        end
	#    end
    else if command sudo ifconfig | grep -q '192.168.87' 2>/dev/null
        if test $status -eq 0
            ssh -t -p 4405 pi@192.168.87.250 '/usr/bin/clear;bash'
        else
            ssh -t -p 4405 pi@bejkon2.duckdns.org '/usr/bin/clear;bash'
        end
    end
end
