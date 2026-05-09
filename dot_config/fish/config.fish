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


mise activate fish --shims | source
mise hook-env -s fish | source

zoxide init fish | source

set -x STARSHIP_CONFIG ~/.config/starship/starship.toml
starship init fish | source

if status is-interactive
    function __remove_slow_prompt_hooks --on-event fish_prompt
        for fn in __mise_env_eval __mise_env_eval_2 __mise_cd_hook
            functions -q -- $fn && functions --erase -- $fn
        end

        functions --erase __remove_slow_prompt_hooks
    end
end
