let
  black = "40, 42, 54"; #282a36
  gray = "68, 71, 90"; #44475a
  green = "80, 250, 123"; #50fa7b
  purple = "189, 147, 249"; #bd93f9
  red = "255, 85, 85"; #ff5555
  white = "248, 248, 242"; #f8f8f2
in {
  programs.hyprlock.settings = {
    background.color = "rgba(30, 31, 41, 230)";

    input-field = {
      inner_color = "rgba(${black}, 0.8)";
      outer_color = "rgba(${purple}, 1)";

      font_family = "0xProto Nerd Font Mono";
      font_color = "rgba(${green}, 1)";
      placeholder_color = "rgba(${white} 1)";
      check_color = "rgba(${gray}, 1)"; # 44475a
      fail_color = "rgba(${red}, 1)";
    };
  };
}
