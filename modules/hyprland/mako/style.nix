{ config, ... }: let
  theme = config.lib.stylix.colors;
  fonts = config.stylix.fonts;
in {
  services.mako.settings = {
    background-color = "#${theme.base00}";
    text-color = "#${theme.base05}";

    font = fonts.serif.name;

    "urgency=low".border-color = "#${theme.base0F}";
    "urgency=normal".border-color = "#${theme.base0B}";
    "urgency=high".border-color = "#${theme.base08}";
  };
}
