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

  dconf.settings = {
    "org/gnome/shell".disable-user-extensions = false;
    "org/gnome/shell/extensions/user-theme".name = "Dracula";

    "org/gnome/shell/extensions/tilingshell" = {
      show-indicator = false;
      enable-autotiling = true;
      enable-snap-assist = true;

      enable-screen-edges-windows-suggestions = true;
      enable-tiling-system-windows-suggestions = true;

      move-window-down = ["<Super>j"];
      move-window-left = ["<Super>h"];
      move-window-right = ["<Super>l"];
      move-window-up = ["<Super>k"];
    };
  };
}
