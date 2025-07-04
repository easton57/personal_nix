# Install nixos
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon

# Install home manager
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update

# Generate initial config
nix-shell '<home-manager>' -A install

# Add unstable
nix-channel --add https://nixos.org/channels/nixos-unstable nixos-unstable
nix-channel --update

# Install hyprland
sudo dnf install -y hyprland

# link files
ln -sf ~/.config/home-manager/home.nix ~/Configuration/personal_nix/other/home.nix 
ln -sf ~/.config/home-manager/ ~/Configuration/personal_nix/other/modules
