{ pkgs, ... }: {

  imports = [
    ./style.nix
  ];

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

  services = {
    syncthing.enable = true;
    hyprpaper.enable = true;
  };
}
