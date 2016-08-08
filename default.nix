{ nixpkgs ? import <nixpkgs> {}, compiler }:
let snap = nixpkgs.pkgs.haskell.packages.${compiler}.callPackage ./snap.nix {}; in
nixpkgs.lib.overrideDerivation snap (old:
  { buildInputs = old.buildInputs ++ (with nixpkgs; [
      zlib
    ]);
    nativeBuildInputs = old.nativeBuildInputs ++ (with nixpkgs; [
      zlib
    ]);
  }
)

