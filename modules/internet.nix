{ pkgs, ...}:

{
  environment.systemPackages = [
    pkgs.brave
    pkgs.legcord
  ];
}
