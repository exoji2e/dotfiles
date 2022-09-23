set PATH $HOME/.local/bin $PATH $HOME/.local/bin/wm
set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/lib/ruby/gems/2.6.0/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/mysql@5.7/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/coreutils/libexec/gnubin" $fish_user_paths
set -g fish_user_paths "$HOME/Library/Application Support/Coursier/bin" $fish_user_paths

set -g -x JAVA_HOME (/usr/libexec/java_home -v 1.8.0_312)

set EDITOR nvim
set -g -x NVM_DIR "$HOME/.nvm"

ssh-add -q --apple-use-keychain "$HOME/.ssh/id_rsa"
complete -e ant

function saveloc --on-event fish_prompt
    pwd > /tmp/whereami
end

if status is-interactive
    if [ $HOME = $PWD ]
        cd (cat /tmp/whereami 2> /dev/null || echo $HOME)
    end
end
