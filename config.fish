set -x PATH $PATH ~/.local/bin
set -gx EDITOR vim

set -Ux FZF_DEFAULT_OPTS '--height 40% --border --reverse --color=fg:#f8f8f2,bg:#000000,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#282a36,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'

set -Ux FZF_ALT_C_OPTS "--preview 'exa -tree {}'"

set -Ux FZF_CTRL_T_OPTS "--preview 'batcat -p --color=always {}'"
