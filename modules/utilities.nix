{ config, pkgs, ...}:

{
  # Virtmanager
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ "eseidel" ];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;

  nixpkgs.overlays = [
    (self: super: {
      neovim = import ./neovim/neovim.nix { pkgs = super; };
    })
  ];

  environment.systemPackages = [
    # Neovim
    pkgs.neovim
    pkgs.lldb
    pkgs.delve

    # Unorganized
    pkgs.nvtopPackages.nvidia
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
    pkgs.pgadmin4
    pkgs.kdePackages.kdeconnect-kde
  ];

  # Tailscale service
  services.tailscale.enable = true;
}
