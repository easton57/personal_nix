{ pkgs, ...}:

{
  environment.systemPackages = [
    pkgs.obs-studio
    pkgs.spotify
  ];
}
