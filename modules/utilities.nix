{ pkgs, ...}:

{
  environment.systemPackages = [
    pkgs.neovim
    pkgs.go
    pkgs.cargo
    pkgs.python3
    pkgs.prusa-slicer
    pkgs.ollama-cuda
    pkgs.git
  ];
}
