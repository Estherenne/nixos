{
  description = "awesome flake";

  nixConfig = {
    extra-substituters = [
      "https://vicinae.cachix.org"
      "https://nix-community.cachix.org"
    ];
    extra-trusted-public-keys = [
      "vicinae.cachix.org-1:1kDrfienkGHPYbkpNj1mWTr7Fm1+zcenzgTizIcI3oc="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-25-05.url = "github:NixOS/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvim-nightly.url = "github:nix-community/neovim-nightly-overlay";

    zen-browser.url = "github:0xc000022070/zen-browser-flake";

    vicinae.url = "github:vicinaehq/vicinae";

    winapps.url = "github:winapps-org/winapps";

    sops-nix.url = "github:Mic92/sops-nix";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    vicinae,
    sops-nix,
    ...
  } @ inputs: {
    nixosConfigurations.comet = nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit inputs;
      };

      modules = [
        ./configuration.nix
        sops-nix.nixosModules.sops

        home-manager.nixosModules.home-manager
        {
          home-manager.extraSpecialArgs = {
            inherit inputs;
          };

          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;

          home-manager.backupFileExtension = ".bak";

          home-manager.users.ester = import ./home.nix;
        }
      ];
    };
  };
}
