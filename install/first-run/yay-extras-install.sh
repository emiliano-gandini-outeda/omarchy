#!/bin/bash

# List of AUR packages
AUR_PACKAGES=(
  "python-pyautogui" "vesktop"
  "clipse"
  "zen-broswer-bin"
)

# Install the packages using yay
for package in "${AUR_PACKAGES[@]}"; do
  yay -S --noconfirm "$package"
done

NODE_VERSION=20.0 yay -S github-desktop
