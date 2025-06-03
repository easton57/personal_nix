{ pkgs, ...}:

{
  # Steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = false;
    localNetworkGameTransfers.openFirewall = true;
  };

  # Others
  home.packages = [
    pkgs.prismlauncher
    pkgs.gamescope
    pkgs.mangohud
    pkgs.lutris
  ];
}
