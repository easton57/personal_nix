{ config, pkgs, ... }:

{
  imports = [
    ./modules/graphics.nix
  ];

  programs.home-manager.enable = true;

  home.username = "eseidel";
  home.homeDirectory = "/home/eseidel";

  home.packages = [
      pkgs.neovim
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  home.stateVersion = "25.05";
}

