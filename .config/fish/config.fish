if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

# Vim key bindings enabled by default
# fish_hybrid_key_bindings

# Use Starship
starship init fish | source

# Editor and alias
set -x EDITOR nvim
alias vim nvim

# ---- FZF -----
fzf --fish | source

# Use fd instead of fzf
set -gx FZF_DEFAULT_COMMAND "fd --hidden --strip-cwd-prefix --exclude .git"
set -gx FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND
set -gx FZF_ALT_C_COMMAND "fd --type=d --hidden --strip-cwd-prefix --exclude .git"

function _fzf_compgen_path
    fd --hidden --exclude .git . $argv
end

function _fzf_compgen_dir
    fd --type=d --hidden --exclude .git . $argv
end

function fcd
    # Use fzf to select a directory (find directories from the current or specified path)
    set dir (find $argv[1]; or echo . | find . -type d | fzf +m)
    # Change to the selected directory if one was chosen
    if test -n "$dir"
        cd $dir
    end
end

# ---- Eza (better ls) -----
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"

# ---- Bat (better cat) -----
set -x BAT_THEME tokyonight_night

# ---- Thefuck -----
thefuck --alias | source 
alias fk="fuck"

# ---- Zoxide (better cd) -----
zoxide init fish | source
alias cd="z"

