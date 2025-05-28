{ pkgs, ... }: 

{
  boot = {

    plymouth = {
      enable = true;
      theme = "pixels";
      themePackages = with pkgs; [
        (adi1090x-plymouth-themes.override {
          selected_themes = [ "pixels" ];
        })
      ];
    };

    # Enable "Silent boot"
    consoleLogLevel = 3;
    initrd.verbose = false;
    kernelParams = [
      "quiet"
      "splash"
      "boot.shell_on_fail"
      "udev.log_priority=3"
      "rd.systemd.show_status=auto"
    ];

    # Show grub for 3 seconds (got a little stuck once and am now scared)
    loader.timeout = 3;
  };
}

