{ pkgs, ... }: {
  imports = [
    ./chromium.nix
    ./editorconfig.nix
    ./firefox.nix
    ./fish.nix
    ./ghostty.nix
    ./git.nix
    ./neovim
    ./starship.nix
    ./virt-manager.nix
    ./zellij.nix
  ];

  home.username = "mm";
  home.homeDirectory = "/home/mm";
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    just
    mosh
    ncdu
    nmap
    ripgrep
  ];

  home.file."justfile".enable = true;
  home.file."justfile".text = # justfile
    ''
      nixos-repo := "github:ModestMeowth/nixos"
      home-manager-repo := "github:ModestMeowth/home-manager"

      alias update := switch

      default:
        just --justfile "{{justfile()}}"

      build: nixos-build home-manager-build

      switch: nixos-switch home-manager-switch

      nixos-build:
        nh os build "{{nixos-repo}}" -- --refresh

      nixos-switch:
        nh os switch "{{nixos-repo}}" -- --refresh

      home-manager-build:
        nh home build "{{home-manager-repo}}" -- --refresh

      home-manager-switch:
        nh home switch "{{home-manager-repo}}" -- --refresh
    '';

  programs = {
    bat = {
      enable = true;
      extraPackages = with pkgs.bat-extras; [
        batman
        batdiff
        prettybat
      ];

      config = {
        theme = "Dracula";
      };
    };

    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };

    eza.enable = true;
    fd = {
      enable = true;
      hidden = true;
      ignores = [ ".git/*" "*.bak" ];
    };
    fish.enable = true;
    fzf.enable = true;
    gh.enable = true;
    home-manager.enable = true;
    man.generateCaches = true;
    starship.enable = true;
    zellij.enable = true;
    zoxide.enable = true;
  };

  systemd.user.startServices = "sd-switch";
}
