{ pkgs ? import <nixpkgs> {} }:

let 
  tree-sitter_git = import ./tree_sitter.nix { inherit pkgs; };
  utf8proc_git = import ./utf8proc.nix { inherit pkgs; };
in
pkgs.stdenv.mkDerivation {
  pname = "nvim";
  version = "0.11.1";

  src = pkgs.fetchFromGitHub {
    owner = "neovim";
    repo = "neovim";
    rev = "v0.11.1"; 
    sha256 = "sha256-kJvKyNjpqIKa5aBi62jHTCb1KxQ4YgYtBh/aNYZSeO8=";
  };

  nativeBuildInputs = with pkgs; [
    cmake
    ninja
    pkg-config
  ];

  buildInputs = with pkgs; [
    gettext
    lua5_1
    lua51Packages.libluv
    lua51Packages.lpeg
    msgpack
    libtermkey
    libvterm
    libuv
    libtool
    unzip
    curl
    gperf
    which
    tree-sitter_git
    luajit
    unibilium
    utf8proc_git
  ];

  buildPhase = ''
    export LD_LIBRARY_PATH=${tree-sitter_git}/lib:$LD_LIBRARY_PATH
    make CMAKE_BUILD_TYPE=Release CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$out"
  '';

  installPhase = ''
    export LD_LIBRARY_PATH=${tree-sitter_git}/lib:$LD_LIBRARY_PATH
    make install
  '';

  # Optional: Add meta information
  meta = with pkgs.lib; {
    description = "Neovim built from source";
    homepage = "https://neovim.io";
    license = licenses.asl20;
    platforms = platforms.all;
  };
}
