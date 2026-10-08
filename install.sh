#!/usr/bin/env bash

set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

info() {
    printf '→ %s\n' "$1"
}

success() {
    printf '✓ %s\n' "$1"
}

printf '\nd1shburn dotfiles\n\n'

info "checking dependencies"

sudo pacman -S --needed --noconfirm \
    hyprland \
    waybar \
    rofi-wayland \
    swaync \
    swayosd \
    hyprlock \
    hyprpaper \
    grim \
    slurp \
    satty \
    alacritty \
    thunar \
    fish \
    git \
    ttf-jetbrains-mono-nerd \
    bibata-cursor-theme \
    >/dev/null

success "dependencies ready"

info "installing configuration"

mkdir -p "$HOME/.config"

cp -r "$REPO_DIR/.config/"* "$HOME/.config/"

success "configuration installed"

info "applying GTK settings"

gsettings set \
    org.gnome.desktop.interface \
    cursor-theme \
    "Bibata-Modern-Ice"

gsettings set \
    org.gnome.desktop.interface \
    font-name \
    "JetBrainsMono Nerd Font 17"

success "GTK settings applied"

printf '\n'
success "d1shburn dotfiles installed"
printf '\n'
