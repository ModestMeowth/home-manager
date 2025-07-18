{ lib, ... }: {
  programs.hyprlock.settings = {
    general = {
      disable_loading_bar = true;
      no_fade_in = false;
    };

    animationsenabled = true;
    bezier = [
      "linear, 1, 1, 0, 0"
    ];
    animation = [
      "fade, 1, 1.8, linear"
    ];

    background = {
      blur_passes = 3;
      path = "screenshot";
    };

    input-field = {
      size = "600, 100";
      position = "0, 0";
      halign = "center";
      valign = "center";
      outline_thickness = 4;

      font-size = 32;

      placeholder_text = "Enter Password 󰈷";
      fail_text = "Wrong";

      rounding = 0;
      shadow_passes = 0;
      fade_on_empty = false;
    };
  };
}
