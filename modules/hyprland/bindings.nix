{pkgs, ...}: let
  terminal = "ghostty";
  browser = "firefox";
  runner = "wofi --show drun";
  passwordManager = "bitwarden";
in
{
  wayland.windowManager.hyprland.settings.bind = [
    "SUPER, RETURN, exec, ${terminal}"
    "SUPER, SPACE, exec, pkill ${runner} || ${runner}"
    "SUPER, D, exec, ${browser}"
    "SUPER, slash, exec, ${passwordManager}"
    "SUPER, W, killactive"

    "SUPER SHIFT, SPACE, exec, pkill -SIGUSR1 waybar"

    "SUPER, V, togglefloating,"

    "SUPER, H, movefocus, l"
    "SUPER, left, movefocus, l"
    "SUPER, J, movefocus, d"
    "SUPER, down, movefocus, d"
    "SUPER, K, movefocus, u"
    "SUPER, up, movefocus, u"
    "SUPER, L, movefocus, r"
    "SUPER, right, movefocus, r"

    "SUPER SHIFT, H, swapwindow, l"
    "SUPER SHIFT, left, swapwindow, l"
    "SUPER SHIFT, J, swapwindow, d"
    "SUPER SHIFT, down, swapwindow, d"
    "SUPER SHIFT, K, swapwindow, u"
    "SUPER SHIFT, up, swapwindow, u"
    "SUPER SHIFT, L, swapwindow, r"
    "SUPER SHIFT, right, swapwindow, r"

    "SUPER SHIFT, P, exec, power-menu"
  ];

  home.packages = [
    (
      pkgs.writeScriptBin "power-menu" # bash
        ''
          show_power_menu() {
            local menu_options, selection

            menu_options="\u200B Lock
          \u200C󰤄 Suspend
          \u200C❌ Logout
          \u200D Relaunch
          \u2060󰜉 Restart
          \u2063󰐥 Shutdown"

            selection=$(echo -e "$menu_options" | wofi \
              --show dmenu \
              --prompt "Power Options" \
              --width 150 \
              --height 195 \
              -O alphabetical)

            case "$selection" in
            *Lock*) loginctl lock-session ;;
            *Suspend*) uwsm stop ;;
            *Logout*) hyprctl dispatch exit ;;
            *Restart*) systemctl reboot ;;
            *Shutdown*) systemctl poweroff ;;
            esac
          }

          show_power_menu
        ''
    )
  ];
}
