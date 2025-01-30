if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

eval "$(/opt/homebrew/bin/brew shellenv)"

starship init fish | source
