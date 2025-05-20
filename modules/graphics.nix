{ pkgs, ...}:

{
  environment.systemPackages = [
    pkgs.blender
    pkgs.godot_4
    pkgs.krita
    pkgs.davinci-resolve
    pkgs.inkscape
    pkgs.freecad
  ];
}
