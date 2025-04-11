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
      show-indicator = true;
      enable-autotiling = true;
      enable-snap-assist = true;

      enable-screen-edges-windows-suggestions = true;
      enable-tiling-system-windows-suggestions = true;

      move-window-down = ["<Super>j"];
      move-window-left = ["<Super>h"];
      move-window-right = ["<Super>l"];
      move-window-up = ["<Super>k"];

      layouts-json = builtins.toJSON [
          {
            id = "40:60";
            tiles = [
              {
                x = 0;
                y = 0;
                width = 0.4;
                height = 1;
                groups = [1];
              }
              {
                x = 0.4;
                y = 0;
                width = 0.6;
                height = 1;
                groups = [1];
              }
            ];
          }
          {
            id = "60:40";
            tiles = [
              {
                x = 0;
                y = 0;
                width = 0.6;
                height = 1;
                groups = [1];
              }
              {
                x = 0.6;
                y = 0;
                width = 0.4;
                height = 1;
                groups = [1];
              }
            ];
          }
          {
            id = "50:50";
            tiles = [
              {
                x = 0;
                y = 0;
                width = 0.5;
                height = 1;
                groups = [1];
              }
              {
                x = 0.5;
                y = 0;
                width = 0.5;
                height = 1;
                groups = [1];
              }
            ];
          }
        ];

      selected-layouts = [
        ["40:60"]
        ["60:40"]
        ["50:50"]
        ["50:50"]
      ];
    };
  };
}
