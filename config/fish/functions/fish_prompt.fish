function fish_prompt
    set -l normal (set_color normal)
    set -l color_cwd $fish_color_cwd
    set -l suffix '>'
    
    if functions -q fish_is_root_user; and fish_is_root_user
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        end
        set suffix '#'
    end
    
    # Print the prompt WITHOUT last status
    echo -n -s (prompt_login)' ' (set_color $color_cwd) (prompt_pwd) $normal (fish_vcs_prompt) " "$suffix " "
end
