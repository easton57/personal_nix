{ config, pkgs, ...}:

{
  environment.systemPackages = [
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
    pkgs.neovim
    pkgs.go
    pkgs.cargo
    pkgs.python3
    pkgs.prusa-slicer
    pkgs.ollama-cuda
    pkgs.git
  ];

  # Tailscale service
  services.tailscale.enable = true;
}
