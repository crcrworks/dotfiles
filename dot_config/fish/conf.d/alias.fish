alias o="open ."
alias x="exit"
alias cl="clear"
alias emacs="emacs -nw"
alias intel="arch -x86_64 bash"
alias bb="bartib"
alias co="colima"
alias beep="afplay /System/Library/Sounds/Ping.aiff"
alias killwine="killall -9 wineserver && killall -9 wine64-preloader"
alias lq="lazysql"
alias l="clear && ls"
alias lg="lazygit"
alias gl="git log --oneline --graph --all"
alias yt="yt-dlp"
alias port="lsof"
alias vencode-install="open /Users/crcr/Development/installer/VencordInstaller\ 5.app"
alias nv="nvim"
alias ca="cargo"

# jujutsu
alias ju="mise exec jj -- jj"
alias jua="ju -r.."
alias jus="ju status"
alias jub="ju bookmark"
alias jubl="ju bookmark list"
alias jubd="ju bookmark delete"
alias jubd="ju bookmark delete"
alias jubs="ju bookmark set"
alias jubs-="ju bookmark set -r @-"
alias jubm="ju bookmark move"
alias jubm-="ju bookmark move -r @-"
alias jubt="ju bookmark track"
alias jur="ju rebase"
alias jun="ju new"
alias jud="ju desc -m"
alias juc="ju commit -m"
alias jue="ju edit"
alias judi="ju diff"
alias jus="ju status"
alias jug="ju git"
alias jugp="ju git push"
alias jugf="ju git fetch"

alias Ju="mise exec jj -- jj"
alias Jua="ju -r.."
alias Jus="ju status"
alias Jub="ju bookmark"
alias Jubl="ju bookmark list"
alias Jubd="ju bookmark delete"
alias Jubd="ju bookmark delete"
alias Jubs="ju bookmark set"
alias Jubs-="ju bookmark set -r @-"
alias Jubm="ju bookmark move"
alias Jubm-="ju bookmark move -r @-"
alias Jubt="ju bookmark track"
alias Jur="ju rebase"
alias Jun="ju new"
alias Jud="ju desc -m"
alias Juc="ju commit -m"
alias Jue="ju edit"
alias Judi="ju diff"
alias Jus="ju status"
alias Jug="ju git"
alias Jugp="ju git push"
alias Jugf="ju git fetch"

alias apps="yabai -m query --windows | jq '.[] | {app}'"

# brew
alias bl="brew list --formula"
alias bg="brew upgrade"
alias blc="brew list --cask"
alias al='echo "************brew***************"; brew list --formula; echo "************cask***************"; brew list --cask; echo "************mas***************"; mas list'
alias ao='echo "************brew***************"; brew upgrade --dry-run; echo "************cask***************"; brew upgrade --cask --greedy --dry-run; echo "************mas***************"; mas outdated'
alias ag='echo "************brew***************"; brew upgrade; echo "************cask***************"; brew upgrade --cask --greedy; echo "************mas***************"; mas upgrade'

# cd
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ei="eza --icons --git"
alias ea="eza -a --icons --git"
alias ee="eza -aahl --icons --git"
alias et="eza -T -L 3 -a -I 'node_modules|.git|.cache' --icons"
alias eta="eza -T -a -I 'node_modules|.git|.cache' --color=always --icons | less -r"
alias ls=ei
alias Ls=ei
alias la=ea
alias ll=ee
alias lt=et
alias lta=eta

#chezmoi
alias ch="chezmoi"
alias cha="chezmoi apply"
alias chc="chezmoi cd"

# docker
alias ld="lazydocker"
alias dkl="docker logs -f"
alias dke="docker exec"
alias dkc="docker compose"
alias dkcl="docker compose logs"
alias dkcu="docker compose up -d"
alias dkcd="docker compose down"
alias dkcub="docker compose up -d --build"
alias dkcb="docker compose build"

alias dllobby="docker logs -f lobby"
alias delobby="docker exec -i lobby rcon-cli"
alias dlnijisaba="docker logs -f nijisaba"
alias denijisaba="docker exec -i nijisaba rcon-cli"
alias dlsubworld="docker logs -f subworld"
alias desubworld="docker exec -i subworld rcon-cli"
alias dlvelocity="docker logs -f velocity"

# git 
alias gs='git status'
alias gfa='git fetch --all'
alias gpa='git pull --all'
alias gco="git checkout"
alias gcob="git checkout -b"
alias gsu='git stash save -u'
alias gsl='git stash list'
alias gsc='git stash clear'
alias gb='git branch --all'
alias gbl='git branch'
alias gbr='git branch --remote'

# npm
alias nrb="npm run build"
alias nrw="npm run watch"
alias nrt="npm run test"
alias nig="npm install -g"
alias nid="npm install -D"
alias pnd="pnpm dev"

# templates
alias ccmake="cp ~/.config/fish/template/cmake.txt ./CMakeLists.txt"
alias ccmakee="cp ~/.config/fish/template/cmake-eggx.txt ./CMakeLists.txt"
alias cclangd="cp ~/.config/fish/template/clangd.txt ./.clangd"
