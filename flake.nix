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
      in
      {
        # nix run
        apps = {
          default = {
            type = "app";
            program = "${pkgs.nodePackages.prettier}/bin/prettier";
          };
        };

        # nix shell
        packages.default = pkgs.buildEnv {
          name = "prettier-dev";
          paths = [ pkgs.nodePackages.prettier ];
        };

        # nix develop
        devShells.default = pkgs.mkShellNoCC {
          name = "prettier-dev";
          buildInputs = [ pkgs.nodePackages.prettier ];
        };
      }
    );

}
