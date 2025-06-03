{ pkgs, ...}:

{
  home.packages = [
    # Needed for gparted and other packages needing authentication
    pkgs.lxqt.lxqt-policykit

    # For fingerprint
    pkgs.fprintd
  ];
}
