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

  programs.git = {
    enable = true;
    userName = "Easton Seidel";
    userEmail = "eseidel1357@gmail.com";
  };

  home.stateVersion = "25.05";
}

