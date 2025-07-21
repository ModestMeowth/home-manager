{ config, ... }: let
  theme = config.lib.stylix.colors;
  fonts = config.stylix.fonts;
in {
  programs.hyprlock.settings = {
    background.color = "rgba(${theme.base00}, 1.0)";

    input-field = {
      inner_color = "rgba(${theme.base00}, 0.8)";
      outer_color = "rgba(${theme.base0F}, 1)";

      font_family = fonts.monospace.name;
      font_color = "rgba(${theme.base0B}, 1)";
      placeholder_color = "rgba(${theme.base05} 1)";
      check_color = "rgba(${theme.base02}, 1)"; # 44475a
      fail_color = "rgba(${theme.base08}, 1)";
    };
  };
}
