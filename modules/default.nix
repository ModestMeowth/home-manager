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
