# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$HOME/.emacs.d/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/ainis/.oh-my-zsh"
# exec fortune | cowsay -f $(ls /usr/share/cows | shuf -n 1) | lolcat
export TERM="xterm-256color"

[ -f "/home/ainis/.ghcup/env" ] && source "/home/ainis/.ghcup/env" # ghcup-env

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_SHORTEN_DELIMITER=".."
POWERLEVEL9K_MODE=nerdfont-complete
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_unique
POWERLEVEL9K_FOLDER_ICON=
POWERLEVEL9K_TIME_BACKGROUND=black
POWERLEVEL9K_TIME_FOREGROUND=white
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=black
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=blue
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='%F{blue}╰%f '
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='%F{blue}╭'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context root_indicator dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status background_jobs time)

ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOCONNECT=false

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
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(mvn git zsh-autosuggestions zsh-syntax-highlighting colored-man-pages command-not-found common-aliases archlinux autojump)

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
export EDITOR='nvim'

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

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'

alias vim='nvim'

# Functions


extract () {
        if [ ! -f "$1" ] ; then
                echo "'$1' does not exist."
                return 1
        fi

        case "$1" in
                *.tar.bz2)   tar xvjf "$1"   ;;
                *.tar.xz)    tar xvJf "$1"   ;;
                *.tar.gz)    tar xvzf "$1"   ;;
                *.bz2)       bunzip2 "$1"    ;;
                *.rar)       rar x "$1"      ;;
                *.gz)        gunzip "$1"     ;;
                *.tar)       tar xvf "$1"    ;;
                *.tbz2)      tar xvjf "$1"   ;;
                *.tgz)       tar xvzf "$1"   ;;
                *.zip)       unzip "$1"      ;;
                *.Z)         uncompress "$1" ;;
                *.xz)        xz -d "$1"      ;;
                *.7z)        7z x "$1"       ;;
                *.a)         ar x "$1"       ;;
                *)           echo "Unable to extract '$1'." ;;
        esac
}

update-mirrors () {
export TMPFILE="$(mktemp)"; \
        sudo true; \
        rate-mirrors --save=$TMPFILE arch --max-delay=43200 \
        && sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup \
        && sudo mv $TMPFILE /etc/pacman.d/mirrorlist
}
