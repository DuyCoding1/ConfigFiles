if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status is-interactive
and not set -q TMUX
    exec tmux
end

#alias
if type -q eza
    alias ll "eza -l -g --icons"
    alias lla "ll -a"
end
alias cls='clear' 
alias no='node'
alias ..='cd ..'
alias vim='nvim'

eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
set -gx PATH $PATH (brew --prefix)/opt/fzf/bin

fzf_configure_bindings --directory=\cf --history=\ch --variables= --processes --git_status=\cg
# Kích hoạt việc sử dụng FZF
set -gx FZF_DEFAULT_COMMAND 'fd --type f --hidden --follow --exclude .git'
