{ pkgs, ...}:

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in
{
  # Blender with Cuda
  nixpkgs.overlays = [
      (self: super: {
          blenderWithCuda = unstable.blender.override {
              cudaSupport = true;
              cudaPackages = super.cudaPackages;
          };
      })
  ];


  environment.systemPackages = [
    unstable.blender
    pkgs.godot_4
    pkgs.krita
    pkgs.davinci-resolve
    pkgs.inkscape
    pkgs.freecad
  ];
}
