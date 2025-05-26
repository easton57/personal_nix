# personal_nix

My personal nix configuration for my laptop and desktop

## Run after download
I also placed it in a Configuration folder in my user's home directory so do that before running what's below.

```sudo ln -sf ~/Configuration/personal_nix/configuration.nix /etc/nixos/configuration.nix```

Be sure to rebuild the bootloader if it wasn't installed with grub

```sudo nixos-rebuild --install-bootloader boot```

## Folder Structure

configuration.nix - Main configuration with system services, nvidia drivers, some basic system packages

### /modules/

* games.nix - Steam and such for gaming
* hypr.nix - Desktop environment and related packages
* media.nix - Just spotify, VLC soon probably
* office.nix - Libre office, nextcloud, bitwarden (can probably move this to security)
* prime_graphics.nix - Module for my laptops hybrid graphics setup (especially good that modularity is here as my desktop won't use this)
* utilities.nix - System libraries and utility packages. Examples: bluetooth, sql, ollama, etc.
* graphics.nix - Packages oriented around graphic/3d design. Examples: Blender, krita, godot
* internet.nix - Brave browser and my discord distro of choice
* power_management.nix - tlp management for laptop
* security.nix - lxqt policy kit for prompting on some applications as hyprland doesn't have one that's native

### /modules/neovim

This whole section is custom for practicing pulling packages from source. (0.11.1 is available via unstable repo)
tree_sitter and utf8proc are needed as the stable versions available aren't compatible with the latest neovim source

* neovim.nix
* tree_sitter.nix
* utf8proc.nix
