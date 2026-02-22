set fish_greeting ""

# theme (Minimalistic, focuses on prompt transparency)
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always
set -g theme_git_default_branches master

# aliases
# Modern alternatives if available
if type -q eza
    alias ls "eza --icons --group-directories-first"
    alias la "eza -a --icons --group-directories-first"
    alias ll "eza -l -g --icons --group-directories-first"
    alias lla "eza -la -g --icons --group-directories-first"
    alias llg "ll --git"
    alias tree "eza --tree --level=2"
else
    alias ls "ls -p -G"
    alias la "ls -A"
    alias ll "ls -l"
    alias lla "ll -A"
end

if type -q bat
    alias cat "bat --theme=base16"
end

if type -q zoxide
    zoxide init fish | source
    alias cd z
end

if type -q fzf
    fzf --fish | source
end

alias g git
alias gs "git status"
alias ga "git add"
alias gc "git commit"
alias gp "git push"
alias gl "git pull"
alias gd "git diff"
alias gco "git checkout"
alias config 'git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias cl clear
alias v nvim
alias vim nvim
alias reload "source ~/.config/fish/config.fish"

# Keymaps
bind \cf "tmux-sessionizer"

set -gx EDITOR nvim

# Path management
fish_add_path $HOME/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/go/bin
fish_add_path $HOME/.yarn/bin
fish_add_path $HOME/.bun/bin
fish_add_path $HOME/.local/share/nvim/mason/bin

# Go
set -g GOPATH $HOME/go

# Local config
set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
    source $LOCAL_CONFIG
end

# N-install
set -x N_PREFIX "$HOME/n"
contains "$N_PREFIX/bin" $PATH; or set -a PATH "$N_PREFIX/bin"

# PNPM
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
fish_add_path "$PNPM_HOME"

# Bun
set --export BUN_INSTALL "$HOME/.bun"
fish_add_path $BUN_INSTALL/bin

# Pyenv
if type -q pyenv
    pyenv init - | source
end

# Fast Node Manager
if type -q fnm
    fnm env --use-on-cd | source
end
