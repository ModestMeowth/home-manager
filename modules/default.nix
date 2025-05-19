{ pkgs, ... }: {
  imports = [
    ./aliases.nix
    ./chromium.nix
    ./editorconfig.nix
    ./firefox.nix
    ./ghostty.nix
    ./git.nix
    ./neovim
    ./shell.nix
    ./starship.nix
    ./virt-manager.nix

    ./tmux.nix
    ./zellij.nix

    ./bash.nix
    ./fish.nix
    ./nushell.nix
    ./zsh.nix
  ];

  home.username = "mm";
  home.homeDirectory = "/home/mm";
  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    just
    ncdu
    nmap
    ripgrep
  ];

  home.file."justfile".enable = true;
  home.file."justfile".text = # justfile
    ''
      IS_MOSH := if env("FISH_PARENT") == ".mosh-server-wr" { "true" } else { "false" }
      nixos-repo := "github:ModestMeowth/nixos"
      home-manager-repo := "github:ModestMeowth/home-manager"

      alias update := switch

      default:
        just --choose --justfile "{{justfile()}}"

      build: nixos-build home-manager-build

      switch: nixos-switch home-manager-switch

      nixos-build:
        nh os build "{{nixos-repo}}" {{ if IS_MOSH == "true" { " --no-nom" } else { "" } }} -- --refresh

      nixos-switch:
        nh os switch "{{nixos-repo}}" {{ if IS_MOSH == "true" { " --no-nom" } else { "" } }} -- --refresh

      home-manager-build:
        nh home build "{{home-manager-repo}}" {{ if IS_MOSH == "true" { " --no-nom" } else { "" } }} -- --refresh

      home-manager-switch:
        nh home switch "{{home-manager-repo}}" {{ if IS_MOSH == "true" { " --no-nom" } else { "" } }} -- --refresh
    '';

  programs = {
    bash.enable = true;
    fish.enable = true;
    nushell.enable = true;
  };

  systemd.user.startServices = "sd-switch";
}
