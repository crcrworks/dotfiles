# fish_vi_key_bindings
# set fish_vi_force_cursor 1

fish_vi_key_bindings
set -g fish_vi_force_cursor 1
set fish_cursor_default block
set fish_cursor_insert underscore

# NOTE:
# -l / --local : force making value local
# -g / --global : make value global
# -U / --universal : make value universal
# -x / --export : export value to children (i.e. make value environment)
# -u / --unexport : don't export value to children

set -U fish_greeting ""

fish_add_path "/Applications/WezTerm.app/Contents/MacOS"

# eval "$(rbenv init -)"
fish_add_path ~/apache-maven-3.8.6/bin/
set llama /Users/crcr/llama2/llama.cpp/examples/chat-13B.sh

function remove_hash
    string replace -- $argv[1] -- "^#" ""
end

fish_add_path $HOME/.cargo/bin

set PATH $PATH /home/asumo/.cargo/bin

set NODE_OPTIONS --openssl-legacy-provider
set DISPLAY :0
set autols_cmd eza

for file in ~/.config/fish/conf.d/**/*.fish
    if test -r "$file"
        source "$file"
    end
end

if status is-interactive
    set PATH /opt/homebrew/bin $PATH
    starship init fish | source
    thefuck --alias | source
    zoxide init fish | source
end
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin $PATH /Users/crcr/.ghcup/bin # ghcup-env
# Created by `pipx` on 2025-03-17 17:57:27
set PATH $PATH /Users/crcr/.local/bin
