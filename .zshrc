source ~/.zplug/init.zsh
source ~/.dotfiles/.aliases

export DEFAULT_USER="${USER}"

export NVM_LAZY_LOAD=true
zplug "lukechilds/zsh-nvm"

# oh-my-zsh plugins
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/git-extras", from:oh-my-zsh

# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
# (If the defer tag is given 2 or above, run after compinit command)
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"

# Load theme file
export POWERLEVEL9K_MODE='nerdfont-complete'
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    zplug install
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

if zplug check zsh-users/zsh-history-substring-search; then
    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down
fi
