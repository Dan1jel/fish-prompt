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

#function transfer 		# copy transfer URL to clipboard
#	if command -q termux-clipboard-set
#	    command curl -s --upload-file $argv https://transfer.sh/$argv -o curl.txt && cat curl.txt | termux-clipboard-set && cat curl.txt && rm -f curl.txt
#	else if command -q xclip
#	    command echo test | xclip -sel clip 2>/dev/null
#	    if test $status -eq 0
#		command curl -s --upload-file $argv https://transfer.sh/$argv -o curl.txt && cat curl.txt | xclip -sel clip 2>/dev/null; cat curl.txt && rm -f curl.txt
# 	    else
#  		command curl -s --upload-file $argv https://transfer.sh/$argv -o curl.txt && cat curl.txt | xclip -sel clip 2>/dev/null; cat curl.txt && rm -f curl.txt && echo "(error copy to clipboard)"
#	    end
#	else
#	     command curl --upload-file $argv https://transfer.sh/$argv && echo
#	end
#end

function transfer 		# copy transfer URL to clipboard
	if command -q termux-clipboard-set
	    command curl -sD - --upload-file $argv https://transfer.sh/$argv | grep 'transfer' | awk -F'/' 'NR==1{print "Delete Token: "$6} END{print $0}' > curl_transfer.log && tail -n1 curl_transfer.log | sed -z 's/\n$//' | termux-clipboard-set && cat curl_transfer.log #&& rm -f curl_transfer.log
	    #command curl -s --upload-file $argv https://transfer.sh/$argv -o curl.txt && cat curl.txt | termux-clipboard-set && cat curl.txt && rm -f curl.txt
	else if command -q xclip
	    command echo test | xclip -sel clip 2>/dev/null
	    if test $status -eq 0
		command curl -sD - --upload-file $argv https://transfer.sh/$argv | grep 'transfer' | awk -F'/' 'NR==1{print "Delete Token: "$6} END{print $0}' > curl_transfer.log && tail -n1 curl_transfer.log | xclip -sel clip 2>/dev/null; cat curl_transfer.log #&& rm -f curl_transfer.log
		#command curl -s --upload-file $argv https://transfer.sh/$argv -o curl.txt && cat curl.txt | xclip -sel clip 2>/dev/null; cat curl.txt && rm -f curl.txt
 	    else
		echo -e "\e[1;31m[x]\e[0m - Error copy to clipboard! - \e[1;31m[x]\e[0m" 
		command curl -sD - --upload-file $argv https://transfer.sh/$argv | grep 'transfer' | awk -F'/' 'NR==1{print "Delete Token: "$6} END{print $0}' > curl_transfer.log && tail -n1 curl_transfer.log | xclip -sel clip 2>/dev/null; cat curl_transfer.log #&& rm -f curl_transfer.log #&& echo "(error copy to clipboard)"
  		#command curl -s --upload-file $argv https://transfer.sh/$argv -o curl.txt && cat curl.txt | xclip -sel clip 2>/dev/null; cat curl.txt && rm -f curl.txt && echo "(error copy to clipboard)"
	    end
	else
	     command curl -sD - --upload-file $argv https://transfer.sh/$argv | grep 'transfer' | awk -F'/' 'NR==1{print "Delete Token: "$6} END{print $0}'
	     #command curl --upload-file $argv https://transfer.sh/$argv && echo
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

function pi --description='Raspberry Server SSH shortcut'
	if test -e ~/termux-backup/good_scripts/ssh_pi.sh
	 ~/termux-backup/good_scripts/ssh_pi.sh $argv
	else
	 ssh -p 4404 pi@bejkon.duckdns.org
 end
end

function zero --description='Raspberry Zero SSH shortcut'
	if test -e ~/termux-backup/good_scripts/ssh_zero.sh
	 ~/termux-backup/good_scripts/ssh_zero.sh $argv
	else
	 ssh -p 4405 pi@bejkon2.duckdns.org
 end
end

function lulu --description='Dell Chromebook (lulu) SSH shortcut'
	if test -e ~/termux-backup/good_scripts/ssh_lulu.sh
	 ~/termux-backup/good_scripts/ssh_lulu.sh $argv
	else
	 ssh -p 4406 pi@bejkonlulu.duckdns.org
 end
end
