{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
    pname = "utf8proc";
    version = "2.10.0";

    src = pkgs.fetchFromGitHub {
      owner = "JuliaStrings";
      repo = "utf8proc";
      rev = "v2.10.0";
      sha256 = "sha256-wmtMo6eBK/xxxkIeJfh5Yb293po9cKK+7WjqNPoxM9g=";
    };

    buildInputs = with pkgs; [ gcc ];

    buildPhase = ''
      make -C ./
      ls -R .
    '';

    installPhase = ''
      mkdir -p $out/lib $out/include
      cp libutf8proc.* $out/lib/
      cp utf8proc.h $out/include/
    '';
}
