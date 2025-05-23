{ pkgs, ...}:

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in
{
  environment.systemPackages = [
    unstable.blender
    pkgs.godot_4
    pkgs.krita
    pkgs.davinci-resolve
    pkgs.inkscape
    pkgs.freecad
  ];
}
