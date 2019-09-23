# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_CUSTOM=~/zsh_custom
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

#ZSH_THEME="spaceship"
ZSH_THEME="diego"
# .zshrc
#autoload -U promptinit;
#promptinit prompt spaceship

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
  git
  docker
  archlinux
)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nano'
   export VISUAL='emacsclient'
else
   export EDITOR='nano'
fi
# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# alias ohmyzsh="mate ~/.oh-my-zsh
alias gitssh="ssh -T git@github.com"
alias fsociety="cd ~/Tools/fsociety && python2 fsociety.py"
alias updatefsociety="cd ~/Tools/fsociety && git pull https://github.com/Manisso/fsociety.git"
alias fivpn="sudo openvpn --config ~/Documents/UPM/vpn/373_vpn_etsiinf.ovpn"
alias triqui="ssh z170102@triqui1.fi.upm.es"

alias freemem="sudo pacman -Rns $(pacman -Qtdq);sudo rm -r ~/.local/share/Trash/files/* ~/.local/share/Trash/info/*; paccache -rk 1"
alias isaac="cd ~/Games/The\ Binding\ of\ Isaac\ Afterbirth\ Plus && wine isaac-ng.exe"
alias lpaci="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 22"
alias lpacu="cat /var/log/pacman.log | grep "\[ALPM\] upgraded" | tail -n 20"
alias untar="tar -zxvf"
alias see="evince"
alias ls="ls_extended"
neofetch --source ~/.config/neofetch/ascii_prompt

# @begin(34982931)@ - Do not edit these lines - added automatically!
# You should customize CIAOPATH before this chunk if you place bundles in
# places other than ~/.ciao
if [ -x ~/.ciaoroot/master/build/bin/ciao-env ] ; then
  eval "$(~/.ciaoroot/master/build/bin/ciao-env --sh)"
fi
# @end(34982931)@ - End of automatically added lines.
