{
  description = "NixOS config flake";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixos-unstable/nixexprs.tar.zst";
    flyline.url = "github:HalFrgrd/flyline";
  };

  outputs = { self, nixpkgs, flyline, ... }: {

    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      modules = [
        ./configuration.nix
         flyline.nixosModules.default
      ];
    };

  };
}
