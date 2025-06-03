{ pkgs, ...}:

{
  home.packages = [
    # Needed for gparted and other packages needing authentication
    pkgs.lxqt.lxqt-policykit

    # For fingerprint
    pkgs.fprintd
  ];

  # fprintd
  services.fprintd.enable = true;
  services.fprintd.tod.enable = true;
  services.fprintd.tod.driver = pkgs.libfprint-2-tod1-goodix;
}
