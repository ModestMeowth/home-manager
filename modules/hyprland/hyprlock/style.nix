{ config, ... }: let
  theme = config.lib.stylix.colors;
  fonts = config.stylix.fonts;
in {
  programs.hyprlock.settings = {
    background.color = "rgb(${theme.base00})";

    input-field = {
      inner_color = "rgba(${theme.base00}cc)";
      outer_color = "rgb(${theme.base0F})";

      font_family = fonts.monospace.name;
      font_color = "rgb(${theme.base0B})";
      placeholder_color = "rgb(${theme.base05})";
      check_color = "rgb(${theme.base02}";
      fail_color = "rgb(${theme.base08})";
    };
  };
}
