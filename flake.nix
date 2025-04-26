{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.11";
    unstable.url = "nixpkgs/nixos-unstable";
    nur.url = "flake:nur";

    nixdb = {
      url = "github:nix-community/nix-index-database";
      inputs.nixpkgs.follows = "unstable";
    };

    home-manager = {
      url = "home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "unstable";
    };
  };

  outputs = { nixpkgs, home-manager, ... }@inputs:
    let
      mkHome =
        { hostname
        , system ? "x86_64-linux"
        , additionalModules ? [ ]
        ,
        }:
        let
          pkgs = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
            overlays = [
              inputs.nur.overlays.default
              (final: _: {
                unstable = import inputs.unstable {
                  inherit (final) system;
                  config.allowUnfree = true;
                };
              })
            ];
          };
        in
        home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = with inputs; [
            nixvim.homeManagerModules.nixvim
            ./modules
            ./hosts/${hostname}.nix
          ] ++ additionalModules;
        };
    in
    {
      homeConfigurations."mm@rocinante" = mkHome {
        hostname = "rocinante";
        additionalModules = [
          ./modules/gnome
        ];
      };

      homeConfigurations."mm@pwnyboy" = mkHome {
        hostname = "pwnyboy";
      };

      homeConfigurations."mm@videodrome" = mkHome {
        hostname = "videodrome";
      };
    };
}
