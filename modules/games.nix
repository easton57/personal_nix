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
  environment.systemPackages = [
    pkgs.lutris
    pkgs.heroic
    pkgs.minecraft
  ];
}
