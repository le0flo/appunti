{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = {nixpkgs, ...}:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [
        typst
        typstPackages.cetz
        typstPackages.cetz-plot
        just
      ];

      shellHook = ''
        export PS1="("devshell") $PS1";
      '';
    };
  };
}
