{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = with pkgs; [
    typst
    typstPackages.cetz
    typstPackages.cetz-plot
    just
  ];
}
