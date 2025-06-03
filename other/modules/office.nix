{ pkgs, ...}:

{
  home.packages = [
    pkgs.libreoffice
    pkgs.nextcloud-client
    pkgs.bitwarden-desktop
  ];
}
