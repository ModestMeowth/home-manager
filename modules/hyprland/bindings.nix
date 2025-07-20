{pkgs, ...}: {
  wayland.windowManager.hyprland.settings = {
    bind = [
      "SUPER, RETURN, exec, ghostty"
      "SUPER SHIFT, RETURN, togglespecialworkspace, scratchPad"
      "SUPER, SPACE, exec, pkill wofi || wofi"
      "SUPER, D, exec, firefox"
      "SUPER, slash, togglespecialworkspace, passwordManager"
      "SUPER, W, killactive"

      "SUPER SHIFT, SPACE, exec, pkill -SIGUSR1 waybar"

      "SUPER, F, fullscreen, 1"
      "SUPER, H, togglesplit,"
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

      "SUPER, ESCAPE, exec, power-menu"

      "SUPER, code:10, workspace, 1"
      "SUPER, code:11, workspace, 2"
      "SUPER, code:12, workspace, 3"
      "SUPER, code:13, workspace, 4"
      "SUPER, code:14, workspace, 5"
      "SUPER, code:15, workspace, 6"
      "SUPER, code:16, workspace, 7"
      "SUPER, code:17, workspace, 8"
      "SUPER, code:18, workspace, 9"
      "SUPER, code:19, workspace, 10"

      "SUPER SHIFT, code:10, movetoworkspace, 1"
      "SUPER SHIFT, code:11, movetoworkspace, 2"
      "SUPER SHIFT, code:12, movetoworkspace, 3"
      "SUPER SHIFT, code:13, movetoworkspace, 4"
      "SUPER SHIFT, code:14, movetoworkspace, 5"
      "SUPER SHIFT, code:15, movetoworkspace, 6"
      "SUPER SHIFT, code:16, movetoworkspace, 7"
      "SUPER SHIFT, code:17, movetoworkspace, 8"
      "SUPER SHIFT, code:18, movetoworkspace, 9"
      "SUPER SHIFT, code:19, movetoworkspace, 10"

      "SUPER, minus, resizeactive, -100 0"
      "SUPER, equal, resizeactive, 100 0"
      "SUPER SHIFT, minus, resizeactive, 0 -100"
      "SUPER SHIFT, equal, resizeactive, 0 100"

      "SUPER, mouse_down, workspace, e+1"
      "SUPER, mouse_up, workspace, e-1"

      "SUPER, comma, exec, makoctl dismiss"
      "SUPER SHIFT, comma, exec, makoctl dismiss --all"
      "SUPER CTRL, comma, exec, toggle-dnd"

      ", PRINT, exec, hyprshot -m region"
      "SHIFT, PRINT, exec, hyprshot -m window"
      "CTRL, PRINT, exec, hyprshot -m output"
      "SUPER, PRINT, exec, hyprpicker -a"

      "SUPER CTRL, I, exec, toggle-idle"
    ];

    bindel = [
      ",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
      ",XF86AudioLowerVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-"
      ",XF86AduioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AduioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
      ",XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 5%+"
      ",XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 5%-"
    ];

    bindl = [
      ",XF86AudioNext, exec, playerctl next"
      ",XF86AudioPause, exec, playerctl play-pause"
      ",XF86AudioPlay, exec, playerctl play-pause"
      ",XF86AudioPrev, exec, playerctl previous"
    ];
  };

  home.packages = with pkgs; [
    (
      writeScriptBin "toggle-idle" # bash
      ''
        style="weight='bold'"
        if [ "$(systemctl --user is-active hypridle)" == "active" ]; then
          systemctl --user stop hypridle
        else
          systemctl --user start hypridle
          notify-send --urgency=low "" "<span $style>Screen Lock enabled</span>"
        fi
      ''
    )
    (
      writeScriptBin "toggle-dnd" # bash
        ''
          style="weight='bold'"
          toggle_dnd() {
            makoctl mode -t do-not-disturb >/dev/null
          }

          if [ "$(makoctl mode | grep 'do-not-disturb')" == "do-not-disturb" ]; then
            toggle_dnd && notify-send --urgency=low "" "<span $style>Enabled notifications</span>"
            echo "Enabled notifications"
          else
            echo "Silenced notifications"
            notify-send --urgency=low "" "<span $style>Silenced notifications</span>" & sleep 1 && toggle_dnd
          fi
        ''
    )
    (
      writeScriptBin "power-menu" # bash
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
