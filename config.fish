if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -Ux FZF_DEFAULT_OPTS '--height 40% --border --reverse --color=fg:#f8f8f2,bg:#000000,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#282a36,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'

if command -q bat
    set -Ux FZF_CTRL_T_OPTS "--preview 'bat -p --color=always {}' --preview-window right:50%:hidden:wrap --bind '?:toggle-preview'"
else if command -q batcat
    set -Ux FZF_CTRL_T_OPTS "--preview 'batcat -p --color=always {}' --preview-window right:50%:hidden:wrap --bind '?:toggle-preview'"
end

if command -q fd
    set -Ux FZF_DEFAULT_COMMAND 'fd --type f  --hidden --follow --exclude .git'
    set -Ux FZF_ALT_C_COMMAND 'fd --type d --hidden --follow --exclude .git' 
    set -Ux FZF_CTRL_T_COMMAND 'fd --type f --type d --hidden --follow --exclude .git'
else if command -q fdfind 
    set -Ux FZF_DEFAULT_COMMAND 'fdfind --type f  --hidden --follow --exclude .git'
    set -Ux FZF_ALT_C_COMMAND 'fdfind --type d --hidden --follow --exclude .git' 
    set -Ux FZF_CTRL_T_COMMAND 'fdfind --type f --type d --hidden --follow --exclude .git'
end

set -Ux FZF_ALT_C_OPTS "--preview 'exa --icons --tree --color=always {}' --preview-window right:50%:hidden:wrap --bind '?:toggle-preview'"

set -Ux FZF_CTRL_R_OPTS "--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"

if command -q vim
    set -Ux EDITOR vim
end

############ ADD PATH ###########

# if test -d ~/.cargo/bin/
#	contains -- $HOME/.cargo/bin/ $fish_user_paths; or set -g fish_user_paths $HOME/.cargo/bin
# end
#
# if test -d ~/.local/bin/
#	contains -- $HOME/.local/bin/ $fish_user_paths; or set fish_user_paths $HOEM/.local/bin
# end
#
# if test -d ~/.fzf/bin/
#	contains -- $HOME/.fzf/bin/ $fish_user_paths; or set fish_user_paths $HOME/.fzf/bin
# end
# 
# if test -d ~/fzf/bin/
#	contains -- $HOME/fzf/bin/ $fish_user_paths; or set -U fish_user_paths $HOME/fzf/bin
# end

set -U fish_user_paths $HOME/bin $HOME/fzf/bin $HOME/.fzf/bin $HOME/.local/bin $HOME/.cargo/bin $HOME/local/bin
#     fish_add_path  ~/.local/bin/
#    set PATH $PATH ~/.local/bin/
#end
