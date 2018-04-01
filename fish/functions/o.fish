function o
    if count $argv > /dev/null
        xdg-open $argv 2> /dev/null
    else
        xdg-open . 2> /dev/null
    end
end
