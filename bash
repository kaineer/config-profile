# ~/git/config/profile/bash
#
# Synopsis:
#
# ### From ~/.bash_profile:
#
# source ~/git/config/profile/bash

if [[ "$PROFILE_BASH_LOADED" != "" ]]; then
  return
fi

PROFILE_BASH_LOADED="true"

### MISC ###

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

### ---- ###

### Variables

BROWSER="/usr/bin/brave-browser"

###

# Assets
# [ -f ~/git/bin-assets/assets/assets.sh ] && \
#   SOURCEPATH=$(eval "echo ~/git/bin-assets/assets/assets.sh") \
#   source ~/git/bin-assets/assets/assets.sh
AF=$(eval "echo ~/git/bin-assets/assets/assets.sh")
[ -f $AF ] && SOURCEPATH=$AF source $AF
AF=

#### FASD
## --> Initialize fasd
eval "$(fasd --init auto)"
# j <dirname_part> -- jump to already visited dir

#### NVM
export NVM_DIR="$HOME/.nvm"
## ---> Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
## ---> Load nvm bash completions
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
# nvm ls -- list installed and known nodes
# nvm use <node_version> -- use node as current
# nvm use <node_version> -- use node and set as default

#### FZF
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# <c-r> -- sassy commands history
# ls -1 | fzf -- select file from directory

#### STARSHIP
export STARSHIP_CONFIG=~/.config/starship/config.toml
eval "$(starship init bash)"
# edit "$STARSHIP_CONFIG" to configurate
# see also https://starship.rs/config/ for configuration details
