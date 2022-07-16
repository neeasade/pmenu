let
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
  buildInputs =
    (with pkgs; [
      stdenv pkgconfig xorg.libX11 xorg.libXft
      xorg.libXext
      xorg.libXinerama
      xorg.libXrender
      imlib2
    ]);
}
