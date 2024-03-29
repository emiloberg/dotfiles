export BBLIVE_M2M_SECRET="hemlis"
export BBLIVE_CLIENT_SECRET="hemlis"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=$HOME/scripts:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/emiloberg/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="avit"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git cp zsh-completions zsh-syntax-highlighting)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias gitclean="git co master && git fetch -p && git pl && git branch --merged | egrep -v \"(^\*|master)\" | xargs git branch -d && git fetch --prune && git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d"
alias gitcleandev="git co develop && git fetch -p && git pl && git branch --merged | egrep -v \"(^\*|develop)\" | xargs git branch -d && git fetch --prune && git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d"
alias psnode="ps aux | awk '!/Slack/ && !/WebStorm/ && !/Postman/ && !/Visual Studio Code/ && !/ionodecache/ && !/Adobe/ && (/node/)'"
alias bi="brew install"
alias bci="brew cask install"
alias bs="brew search"
alias bcs="brew cask search"
alias t="touch"
alias lg="lazygit"


#LOAD NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

#HUB
eval "$(hub alias -s)"

# ALIAS
# alias rm=rmtrash
# alias del=rm
# alias pr="open $(git remote get-url origin)/compare/$(git branch | grep \* | cut -d ' ' -f2)?expand=1"
alias mergepdf="\"/System/Library/Automator/Combine PDF Pages.action/Contents/Resources/join.py\" -o merged.pdf ./*.pdf"

#RBEnv
eval "$(rbenv init -)"

# Syntax Highlighting 
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


cd() {      
   builtin cd "$1"
    if test -f ".nvmrc"; then
        NVMRCV=$(cat .nvmrc )
        NODEV=$(node -v | cut -c 2-)
        if [ "$NVMRCV" != "$NODEV" ]
        then
            nvm use
        fi
    fi
   
   
}
export GPG_TTY=$(tty)
