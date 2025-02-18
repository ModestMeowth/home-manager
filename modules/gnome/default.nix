{ pkgs, ... }: {
  imports = [
    ./dconf.nix
    ./extensions.nix
  ];

  home.packages = with pkgs; [
    dracula-theme
    dracula-icon-theme
  ];

  gtk.theme.name = "Dracula";
  gtk.iconTheme.name = "Dracula";
}
