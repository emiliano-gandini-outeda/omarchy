function search
    fzf --preview='cat {}' | wl-copy
end
