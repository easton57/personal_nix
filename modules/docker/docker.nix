{ pkgs, ... }:

let
  docker-desktop = import ./docker-desktop.nix { inherit pkgs; };
in
{
    virtualisation.docker = {
        enable = true;

        daemon.settings = {
            experimental = true;
            default-address-pools = [
                {
                    base = "172.30.0.0/16";
                    size = 24;
                }
            ];
        };
    };

    users.users.eseidel.extraGroups = [ "docker" ];

    environment.systemPackages = [
        # docker-desktop
        pkgs.docui
        pkgs.docker-client
        pkgs.nvidia-docker
    ];
}
