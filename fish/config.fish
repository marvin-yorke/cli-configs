if status is-interactive
    # Commands to run in interactive sessions can go here

    abbr -a fishconfig 'nvim ~/.config/fish/config.fish'

    abbr -a vi nvim
    abbr -a vim nvim
    set -ge EDITOR nvim

    abbr -a lad lazydocker
    abbr -a lag lazygit
    abbr -a gs 'git status'
    abbr -a gd 'git diff'

    alias ls='eza'
    abbr -a l ls
    abbr -a la 'la -la'

    fish_add_path ~/.local/bin

    zoxide init fish | source
    abbr -a zz 'z -'
end
