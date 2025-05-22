{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
    pname = "tree-sitter";
    version = "0.25.4";

    src = pkgs.fetchFromGitHub {
      owner = "tree-sitter";
      repo = "tree-sitter";
      rev = "v0.25.4";
      sha256 = "sha256-6qE/LXAGzV68HHr4lB74vmSn6mGF9EV7enjWOyNQjDQ=";
    };

    buildInputs = with pkgs; [ gcc ];

    buildPhase = ''
      make
    '';

    installPhase = ''
      mkdir -p $out/bin $out/lib $out/include
      cp libtree-sitter.* $out/lib/
      ln -s $out/lib/libtree-sitter.so $out/lib/libtree-sitter.so.0.25
      cp -r ./lib/include/tree_sitter $out/bin/
      cp -r ./lib/include $out/
    '';
} 
