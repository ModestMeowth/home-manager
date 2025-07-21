{ config, pkgs, ... }: {
  dconf.settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";

  gtk = {
    enable = true;
    theme.name = "Dracula";
    theme.package = pkgs.dracula-theme;
    font.name = config.stylix.fonts.serif.name;
    font.size = 10;
  };

  stylix = {
    enable = true;
    autoEnable = false;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/dracula.yaml";

    polarity = "dark";
    image = ./background.jpeg;

    cursor = {
      size = 24;
      package = pkgs.adwaita-icon-theme;
      name = "Adwaita";
    };

    icons = {
      enable = true;
      dark = "Dracula";
      package = pkgs.dracula-icon-theme;
    };

    fonts = {
      serif.name = "0xProto Nerd Font Propo";
      monospace.name = "0xProto Nerd Font Mono";
    };

    targets = {
      hyprpaper.enable = true;
    };
  };
}
