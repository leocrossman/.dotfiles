# Check and perform installs (To be moved to independent install scripts in the future):
# if oh-my-zsh is not installed, install it
if [ ! -d $HOME/.oh-my-zsh ] ; then
    echo "No oh-my-zsh installation found. Installing..." >&2
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# powerlevel10k
if [ ! -d $HOME/.oh-my-zsh/custom/themes/powerlevel10k ] ; then
    echo "No powerlevel10k installation found. Installing..." >&2
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

# Install scripts - installs only if not found
# Changes permissions to be executable
#chmod +x ~/.dotfiles/scripts/ubuntu/bash/install_fortune.sh


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]] ; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="random"
ZSH_THEME="powerlevel10k/powerlevel10k"
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# ZSH_CUSTOM=/pa/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# Plugins first -> PATH to oh-my-zsh -> source oh-my-zsh.sh
plugins=(git)


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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

# set default editor
# export EDITOR="code -w" # vscode
export EDITOR="vi" # vi
alias v="nvim"
# fix_wsl2_interop() {
#    for i in $(pstree -np -s $$ | grep -o -E '[0-9]+'); do
#         if [[ -e "/run/WSL/${i}_interop" ]]; then
#             export WSL_INTEROP=/run/WSL/${i}_interop
#         fi
#     done
# }

# fix_wsl2_interop

# make command_not_found active in zsh since it is not by default
# [[ -a "/etc/zsh_command_not_found" ]] && . /etc/zsh_command_not_found

# ------------ run these on startup ------------
# echo $ZSH_THEME
fortune | cowsay  -f "$(ls /usr/share/cowsay/cows | sort -R | head -1)" | lolcat

unsetopt BEEP
# Turn off autocomplete beeps
unsetopt LIST_BEEP

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# launch tmux on startup
# if which tmux 2>&1 >/dev/null; then
#   if [ $TERM != "screen-256color" ] && [ $TERM != "screen" ]; then
#     tmux new-session -A -s main;
#   fi
# fi

# aliases

# get ip
alias myip="curl http://ipecho.net/plain; echo"
# open file explorer gui
alias e="explorer.exe ."
alias vi="vim"

# enter postgres user
# sudo -u postgres -i
# enter psql cli
alias pg="sudo -u postgres psql"
# /statusstart/stop psql server
alias pstatus="sudo service postgresql status"
alias pstart="sudo service postgresql start"
alias pstop="sudo service postgresql stop"



alias mg="mongosh"
alias mstatus="sudo service mongod status"
alias mstart="sudo service mongod start"
alias mstop="sudo service mongod stop"

alias c="clear"
alias n="nvim"
alias so="source ~/.zshrc"

alias clean_nm="find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +"

# color stuff
# alias show_colors="zsh ~/.dotfiles/ubuntu/scripts/zsh/display_terminal_colors.zsh"
d=.dircolors
test -r $d && eval "$(dircolors $d)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
