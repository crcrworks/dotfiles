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

# eval "$(rbenv init -)"
fish_add_path ~/apache-maven-3.8.6/bin/
set llama /Users/crcr/llama2/llama.cpp/examples/chat-13B.sh

function remove_hash
    string replace -- $argv[1] -- "^#" ""
end

if status is-interactive
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME

/home/crcr/.local/bin/mise activate fish | source
starship init fish | source
zoxide init fish | source
