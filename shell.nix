{ nixpkgs ? import <nixpkgs> {}, compiler }:
(import ./default.nix { inherit nixpkgs compiler; })

