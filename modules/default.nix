{ pkgs, ... }: {
  imports = [
    ./aliases.nix
    ./btop
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

  home.sessionVariables = {
    JUST_UNSTABLE = "true"; # currently needed to use [script] tag, which fixes scripts on WSL due to noexec on $XDG_RUNTIME_DIR
  };

  home.file."justfile".enable = true;
  home.file."justfile".text = # justfile
    ''
      IS_MOSH := if env("PARENT_PROCESS", "false") == ".mosh-server-wr" { "true" } else { "false" }
      nixos-repo := "github:ModestMeowth/nixos"
      home-manager-repo := "github:ModestMeowth/home-manager"

      alias update := switch

      default:
        just --choose --justfile "{{justfile()}}"

      boot:
        nh os boot "{{nixos-repo}}" {{ if IS_MOSH == "true" { " --no-nom" } else { "" } }} -- --refresh

      build: nixos-build home-manager-build

      switch: nixos-switch home-manager-switch

      test:
        nh os test "{{nixos-repo}}" {{ if IS_MOSH == "true" { " --no-nom" } else { "" } }} -- --refresh

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
