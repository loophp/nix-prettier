{
  description = "Nix Prettier";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, flake-utils, nixpkgs }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config = { allowUnfree = true; };
        };
        inherit (pkgs.nodePackages) prettier;
      in
      {
        # nix shell and nix run
        packages.default = prettier;

        # nix develop
        devShells.default = pkgs.mkShellNoCC {
          name = "prettier-dev";
          buildInputs = [ prettier ];
        };
      }
    );

}
