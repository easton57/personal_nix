{ pkgs, ... }:

{
  programs.hyprland.enable = true;
  programs.hyprlock.enable = true;
  programs.uwsm.enable = true;
  programs.iio-hyprland.enable = true;
  programs.hyprland.withUWSM = true;
  programs.hyprland.xwayland.enable = true;

  services.hypridle.enable = true;

  environment.systemPackages = [
    pkgs.waybar
    pkgs.wofi
    pkgs.dunst
    pkgs.kitty
  ];
}
