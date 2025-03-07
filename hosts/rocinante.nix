{ pkgs, ... }: {
  dconf.settings."org/gnome/desktop/applications/terminal".exec = "ghostty";

  home.packages = with pkgs; [
    virt-manager
    xdg-utils
  ];

  programs = {
    firefox.enable = true;
    ghostty.enable = true;
    k9s.enable = true;
    k9s.settings.k9s.skin = "dracula";
  };

  services = {
    syncthing.enable = true;
  };
}
