{ config, pkgs, ...}:

{
  # Virtmanager
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ "eseidel" ];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;

  # KDE Connect
  programs.kdeconnect.enable = true;

  # Custom neovim
  nixpkgs.overlays = [
    (self: super: {
      neovim = import ./neovim/neovim.nix { pkgs = super; };
    })
  ];

  environment.systemPackages = [
    # Neovim
    pkgs.neovim
    pkgs.lldb
    pkgs.delve # This is a package for debugging golang

    # Cuda
    pkgs.cudaPackages.cudatoolkit
    pkgs.cudaPackages.cudnn

    # Unorganized
    pkgs.nvtopPackages.full
    pkgs.deno
    pkgs.cmake
    pkgs.tailscale
    pkgs.bluez
    pkgs.gcc
    pkgs.gparted
    pkgs.lshw
    pkgs.btop
    pkgs.fastfetch
    pkgs.go
    pkgs.cargo
    pkgs.python3
    pkgs.prusa-slicer
    pkgs.ollama-cuda
    pkgs.git
    pkgs.qemu
    pkgs.pgadmin4-desktopmode
    pkgs.nodejs_24
    pkgs.sway-contrib.grimshot
    ];

  # Ollama service
  services.ollama = {
    enable = true;
    acceleration = "cuda";
  };

  # Tailscale service
  services.tailscale.enable = true;
}
