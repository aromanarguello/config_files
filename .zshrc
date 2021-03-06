# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/Users/alejandroroman/.oh-my-zsh"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="awesome-patched"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# export PATH="/Users/alejandroroman/miniconda3/bin:$PATH"  # commented out by conda initialize

# export PATH="$HOME/miniconda3/bin:$PATH"  # commented out by conda initialize
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Misc
alias ohmyzsh="code ~/.oh-my-zsh"
# alias open="code ."
alias rm="rm -rf"
alias gb="gatsby build"
alias gd="gatsby develop"

# Package manager
# NPM
alias zshconfig="code ~/.zshrc"
alias ns="npm start"
alias nrt="npm run test"
alias nrd="npm run dev"
alias nrb="npm run build"
alias dev="npm install --save-dev"

# Yarn
alias sb="yarn storybook"
alias yd="yarn dev"
alias ys="yarn start"
alias yb="yarn build"
alias yad="yarn add -D"

# Git
alias gs="git status"
alias cb="git checkout -B"
alias co="git checkout"
alias pf="git push --force"
alias gbsu="git branch --set-upstream-to=upstream/master master"
alias push="git push"
alias gp="git push --set-upstream origin"
alias pull="git pull"
alias push="git push"
alias gadd="git add ."
alias clone="git clone"
alias commit="git commit -m"
alias master="git checkout master"
alias amend="git commit --amend"

# Vagrant
alias vs="vagrant ssh"
alias vup="vagrant up"

# Docker
alias dcb="docker-compose build"
alias dcu="docker-compose up"
alias dct="docker-compose run --rm app sh -c 'python manage.py test'"
alias dcm="docker-compose run --rm app sh -c 'python manage.py migrate'"
alias dcmm="docker-compose run --rm app sh -c 'python manage.py makemigrations'"

# Node
alias ka="sudo killall -9 node"

# Typeorm
alias mg="npm run migration:generate -n"
alias mr="npm run migration:run"


# Typescript
alias ngs="npm run generate-schema"

# Docker
alias radc="docker rm -vf $(docker ps -a -q)"
alias radi="docker rmi -f $(docker images -a -q)"


function mkcd {
    local target=$1
    mkdir -p "$target"
    cd $target
}

function migrate {
    local target=$1
    yarn run typeorm -- migration:generate -n "$target"
    yarn build
    yarn run typeorm -- migration:run
}

alias pg-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
