{ pkgs, ...}:

{
  home.packages = [
    pkgs.steam
    pkgs.prismlauncher
    pkgs.gamescope
    pkgs.mangohud
    pkgs.lutris
  ];
}
