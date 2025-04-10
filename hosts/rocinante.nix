{ pkgs, ... }: {
  dconf.settings."org/gnome/desktop/applications/terminal".exec = "ghostty";

  home.packages = with pkgs; [
    bitwarden-cli
    bitwarden-desktop
    lutris
    signal-desktop
    virt-manager
    xdg-utils
  ];

  programs = {
    chromium.enable = true;
    firefox.enable = true;
    ghostty.enable = true;
    k9s.enable = true;
    k9s.settings.k9s.skin = "dracula";
  };

  services = {
    syncthing.enable = true;
  };
}
