#code from Bobthefish theme
function fish_greeting -d "What's up, fish?"

#    clear ### clear script ###

/usr/bin/clear

bash -c 'echo -e "\e[38;5;246m  $(uname -nmsr)"'
bash -c 'echo -e "\e[38;5;246m $(uptime)\033[00m"'


#   if command -q neofetch ### neofetch alias ###
#     nf
#   end

#   set_color $fish_color_autosuggestion
      
#     uname -nmsr	
#     command -s uptime >/dev/null
#     and command uptime

#   set_color normal

	if command -q neofetch 
	  neofetch --ascii_colors 7 --ascii ~/termux-backup/ascii_art/neofetch/ascii_ap
	  ### NFSW ASCII ###
	  #neofetch --ascii_colors 7 --ascii ~/termux-backup/ascii_art/neofetch/$(shuf -n1 ~/termux-backup/ascii_art/neofetch/ascii_list.txt)
	end
end
