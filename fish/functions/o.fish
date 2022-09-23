function o
    if type -q open
        set openCmd open
    else if type -q xdg-open
        set openCmd xdg-open
    else
        echo "no open command"
        return
    end
    if count $argv > /dev/null
        $openCmd $argv 2> /dev/null &
    else
        $openCmd . 2> /dev/null &
    end
end
