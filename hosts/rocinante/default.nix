{ config, pkgs, ... }: {
  dconf.settings."org/gnome/desktop/applications/terminal".exec = "ghostty";

  home.packages = with pkgs; [
    bitwarden-cli
    bitwarden-desktop
    unstable.bootdev-cli
    devenv
    fontpreview
    signal-desktop-bin
    treefmt
    virt-manager
    xdg-utils
  ];

  programs = {
    btop.enable = true;
    chromium.enable = true;
    firefox.enable = true;
    ghostty.enable = true;
    k9s.enable = true;
    k9s.settings.k9s.skin = "dracula";
    wofi.enable = true;

    hyprlock.settings.auth."fingerprint:enabled" = true;
  };

  wayland.windowManager.hyprland.settings = {
    env = [
      "GDK_SCALE,1"
    ];

    monitor = [
      "eDP-1,preferred,auto,1"
    ];
  };

  xdg.cacheFile."background/nebula.jpeg" = {
    source = ./background.jpeg;
  };

  services = {
    syncthing.enable = true;
  };

  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      splash = false;
      preload = "${config.home.homeDirectory}/.cache/background/nebula.jpeg";
      wallpaper = "eDP-1,${config.home.homeDirectory}/.cache/background/nebula.jpeg";
    };
  };

  home.pointerCursor = {
    name = "Adwaita";
    package = pkgs.adwaita-icon-theme;
    size = 24;
    gtk.enable = true;
    hyprcursor.enable = true;
    hyprcursor.size = config.home.pointerCursor.size;
  };

  wayland.windowManager.hyprland.settings.exec-once = [
    "dconf write /org/gnome/desktop/interface/cursor-theme '${config.home.pointerCursor.name}'"
    "dconf write /org/gnome/desktop/interface/cursor-size '${builtins.toString config.home.pointerCursor.size}'"
    "dconf write /org/gnome/desktop/interface/color-scheme 'prefer-dark'"
  ];

  qt = {
    enable = true;
    style.name = "adwaita-dark";
  };

  gtk = {
    enable = true;
    theme = {
      name = "Dracula";
      package = pkgs.dracula-theme;
    };
    iconTheme = {
      name = "Dracula";
      package = pkgs.dracula-icon-theme;
    };

    font = {
      name = "0xProto Nerd Font Propo";
      size = 10;
    };
  };
}
