set PATH $HOME/.local/bin $PATH $HOME/.local/bin/wm  $HOME/.gem/ruby/2.7.0/bin $HOME/.gem/ruby/3.0.0/bin
set EDITOR nvim
#set -xg PYTHONPATH /home/exoji2e/repos/CompProg/converter
#set -xg PYTHONSTARTUP $HOME/.pyrc.py
### START-Keychain ###
# Let  re-use ssh-agent and/or gpg-agent between logins
#/usr/bin/keychain $HOME/.ssh/id_rsa
#source "$HOME/.keychain/dragonair-fish"
### End-Keychain ###


function saveloc --on-event fish_prompt
    pwd > /tmp/whereami
end

if status is-interactive
    if [ $HOME = $PWD ]
        cd (cat /tmp/whereami 2> /dev/null || echo $HOME)
    end
end
