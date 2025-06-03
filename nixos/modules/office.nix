{ pkgs, ...}:

{
  environment.systemPackages = [
    pkgs.libreoffice
    pkgs.nextcloud-client
    pkgs.bitwarden-desktop
  ];
}
