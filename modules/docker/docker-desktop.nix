{ pkgs ? import <nixpkgs> {} }: 

pkgs.stdenv.mkDerivation {
    name = "docker-desktop";
    
    src = pkgs.fetchurl {
        url = "https://desktop.docker.com/linux/main/amd64/191736/docker-desktop-x86_64.pkg.tar.zst";
        sha256 = "1220a2ba9f9065983de580bd80d717a643651216a0ffd400d0ca6f08a127571d";
    };

    nativeBuildInputs = [ pkgs.zstd pkgs.patchelf ];

    phases = [ "unpackPhase" "installPhase" ];

    unpackPhase = ''
        zstd -d $src -o docker.tar
        tar -xf docker.tar
    '';

    installPhase = ''
        mkdir -p $out/usr $out/opt $out/share 
        mv opt/* $out/opt
        mv usr/* $out/usr

        # Symlink for desktop files
        ln -s $out/usr/share/applications $out/share/

        # Symlink for service
        ln -s $out/usr/lib $out
    '';
}
