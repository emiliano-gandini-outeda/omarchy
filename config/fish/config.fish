if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    fastfetch
    set -x FZF_DEFAULT_COMMAND "find /home/eclipse -type f -or -type d -name '.*'"
    set -U fish_user_paths /usr/local/bin /usr/local/sbin /usr/bin /usr/sbin /bin /sbin /usr/bin/core_perl ~/.local/bin ~/.cargo/bin ~/.npm-global/bin ~/.dotnet/tools $fish_user_paths
end

fish_add_path /home/eclipse/.spicetify
set -gx SDL_VIDEODRIVER x11
set -gx SDL_VIDEODRIVER x11
set -gx SDL_VIDEODRIVER x11
