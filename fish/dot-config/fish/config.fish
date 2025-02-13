# Unset the default fish greeting text which messes up Zellij
set fish_greeting

fish_add_path ~/.cargo/bin
fish_add_path /opt/homebrew/bin

set -gx EDITOR nvim

# setup fzf integration
if which fzf > /dev/null;
  fzf --fish | source
  set -x FZF_DEFAULT_OPTS_FILE "$HOME/.config/fzfrc"
end

# setup zoxide
if which zoxide > /dev/null;
  zoxide init fish | source
  abbr -a zz 'z -'
end

if status is-interactive
    # Commands to run in interactive sessions can go here

    abbr -a fishconfig 'nvim ~/.config/fish/config.fish'

    abbr -a vi nvim
    abbr -a vim nvim

    abbr -a lad lazydocker

    alias ls='eza'
    abbr -a l ls
    abbr -a la 'la -la'

    fish_add_path ~/.local/bin
    fish_add_path ~/.cargo/bin
end

