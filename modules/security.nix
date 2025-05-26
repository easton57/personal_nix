{ pkgs, ...}:

{
  environment.systemPackages = [
    # Needed for gparted and other packages needing authentication
    pkgs.lxqt.lxqt-policykit
  ];
}
