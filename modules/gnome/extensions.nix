{ pkgs, ... }: {
  home.packages = with pkgs.gnomeExtensions; [
    tiling-shell
    gsconnect
    no-overview
    user-themes
  ];

  dconf.settings."org/gnome/shell".enabled-extensions = [
    "tilingshell@ferrarodomenico.com"
    "gsconnect@andyholmes.github.io"
    "no-overview@fthx"
    "user-theme@gnome-shell-extensions.gcampax.github.com"
  ];
}
