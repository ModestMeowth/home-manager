{ config, ... }: let
  theme = config.lib.stylix.colors;
in {
  wayland.windowManager.hyprland.settings = {
    general = {
      "col.active_border" = "rgb(${theme.base02}) rgb(${theme.base0F}) 90deg";
      "col.inactive_border" = "rgba(${theme.base02}aa)";
      "col.nogroup_border" = "rgba(${theme.base00}dd)";
      "col.nogroup_border_active" = "rgb(${theme.base0F}) rgb(${theme.base02}) 90deg";
    };

    decoration.shadow.color = "rgba(${theme.base00}66)";

    group.groupbar = {
      "col.active" = "rgb(${theme.base0F}) rgb(${theme.base02}) 90deg";
      "col.inactive" = "rgba(${theme.base00}dd)";
    };

    windowrulev2 = [
      "bordercolor rgb(${theme.base08}),xwayland:1"
    ];
  };
}
