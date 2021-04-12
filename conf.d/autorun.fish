if status is-interactive && ! functions --query fisher
    #echo " • installing!"
    curl --silent --location https://git.io/fisher | source && fisher install jorgebucaran/fisher && fisher install dan1jel/fish-prompt
    clear
else
    #echo " • not installing..."
end
