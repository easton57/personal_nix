{ pkgs, ...}:

{
  # Steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = false;
    localNetworkGameTransfers.openFirewall = true;
  };

  # Angry electron for heroic
  nixpkgs.config.permittedInsecurePackages = [
    "electron-33.4.11"
  ];

  # Others
  environment.systemPackages = [
    pkgs.heroic
    pkgs.prismlauncher
    pkgs.gamescope
    pkgs.mangohud
    pkgs.lutris
  ];
}
