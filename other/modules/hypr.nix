{ pkgs, ... }:

{
  programs.hyprlock.enable = true;
  services.hypridle.enable = true;

  # GTK portal for steam
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
  };

  home.packages = [
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
  ];
}
