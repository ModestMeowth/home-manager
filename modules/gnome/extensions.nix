{ pkgs, ... }: {
  home.packages = with pkgs.gnomeExtensions; [
    forge
    gsconnect
    no-overview
    user-themes
  ];

  dconf.settings."org/gnome/shell".enabled-extensions = [
    "forge@jmmaranan.com"
    "gsconnect@andyholmes.github.io"
    "no-overview@fthx"
    "user-theme@gnome-shell-extensions.gcampax.github.com"
  ];
}
