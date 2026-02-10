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

export PATH="$HOME/.local/bin:$PATH"

# opencode
fish_add_path /Users/danku/.opencode/bin
