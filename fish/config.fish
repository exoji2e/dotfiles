set PATH $HOME/.local/bin $PATH $HOME/.local/bin/wm
set EDITOR nvim
set -xg PYTHONPATH /home/exoji2e/repos/CompProg/converter
#set -xg PYTHONSTARTUP $HOME/.pyrc.py
### START-Keychain ###
# Let  re-use ssh-agent and/or gpg-agent between logins
/usr/bin/keychain $HOME/.ssh/id_rsa
source "$HOME/.keychain/dragonair-fish"
### End-Keychain ###


function saveloc --on-event fish_prompt
pwd > /tmp/whereami
end

if status is-interactive
cd (cat /tmp/whereami)
end
