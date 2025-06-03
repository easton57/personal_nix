{ config, pkgs, ...}:

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
  
  # Blender with Cuda
  overlays = self: super: {
    blenderWithCuda = unstable.blender.override {
      cudaSupport = true;
      cudaPackages = super.cudaPackages;
    };
  };
in
{
  home.packages = [
    unstable.blender
    pkgs.godot_4
    pkgs.krita
    pkgs.davinci-resolve
    pkgs.inkscape
    pkgs.freecad
  ];
}
