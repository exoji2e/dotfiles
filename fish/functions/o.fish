function o
    if count $argv > /dev/null
        nohup xdg-open $argv >/dev/null 2> /dev/null &
        rm nohup.out
        disown
    else
        nohup xdg-open . >/dev/null 2> /dev/null &
        rm nohup.out
        disown
    end
end
