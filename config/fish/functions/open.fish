function open
    set file (fzf --preview='cat {}')
    if test -n "$file"
        nvim "$file"
    end
end
