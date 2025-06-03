{ pkgs, ... }:

{
  programs.hyprland.enable = true;

  programs.hyprlock.enable = true;
  programs.uwsm.enable = true;
  programs.iio-hyprland.enable = true;
  programs.hyprland.withUWSM = true;
  programs.hyprland.xwayland.enable = true;

  services.hypridle.enable = true;

  # GTK portal for steam
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
  };

  environment.systemPackages = [
    pkgs.xdg-desktop-portal-gtk
    pkgs.steam-run
    pkgs.jq
    pkgs.ghostty
    pkgs.networkmanagerapplet
    pkgs.font-awesome
    pkgs.hyprpaper
    pkgs.avizo
    pkgs.dunst
    pkgs.waybar
    pkgs.wofi
    pkgs.dunst
    pkgs.kitty
  ];
}
