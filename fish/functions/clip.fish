function clip
    if type -q pbcopy
        cat $argv | pbcopy
    else if type -q xclip
        cat $argv | xclip -selection clipboard
    else
        echo "No clipping tool installed"
    end
end
