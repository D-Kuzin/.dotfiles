if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

if test (uname) = Darwin
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
end

starship init fish | source

alias mit='cd ~/Documents/NCFSIMITDK/src/frontend/'
alias ami='cd ~/Documents/NCAMI/src/frontend/'
export PATH="$HOME/.local/bin:$PATH"
