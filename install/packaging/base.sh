# Install all base packages
mapfile -t packages < <(grep -v '^#' "$OMARCHY_INSTALL/omarchy-base.packages" | grep -v '^$')
sudo pacman -S --noconfirm --needed "${packages[@]}"

# Set fish as default shell (only if installed)
if command -v fish >/dev/null 2>&1; then
    # Ensure fish is in /etc/shells
    if ! grep -Fxq "$(command -v fish)" /etc/shells; then
        echo "$(command -v fish)" | sudo tee -a /etc/shells >/dev/null
    fi

    # Change the default shell for the user running the installer
    sudo chsh -s "$(command -v fish)" "$USER"
fi