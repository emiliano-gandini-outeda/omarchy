#!/bin/bash

# Function to print the focused window title
print_title() {
    title=$(hyprctl activewindow | grep "title:" | sed 's/.*title: //')
    [ -z "$title" ] && title="Desktop"
    clean_title=$(echo "$title" | sed 's/^(.*) *//; s/ - .*//; s/ — .*//; s/: .*//; s/ *$//')
    echo " $clean_title"
}

last_title=""

# Continuous loop for instant updates
while true; do
    current_title=$(hyprctl activewindow | grep "title:" | sed 's/.*title: //')
    [ -z "$current_title" ] && current_title="Desktop"
    clean_title=$(echo "$current_title" | sed 's/^(.*) *//; s/ - .*//; s/ — .*//; s/: .*//; s/ *$//')

    if [[ "$clean_title" != "$last_title" ]]; then
        echo " $clean_title"
        last_title="$clean_title"
    fi
done

