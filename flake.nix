{
  description = "My development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
  };

  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs { };
    in
    {
      devShell = pkgs.mkShellNoCC {
        buildInputs = [
          pkgs.gh
          pkgs.yq
          pkgs.jq
          pkgs.kubernetes-helm
          pkgs.kubernetes-kubectl
          pkgs.svu
          pkgs.goreleaser
        ];
      };
    };
}
