{
  wayland.windowManager.hyprland.settings.exec-once = [
    "uwsm app -- waybar"
    "wl-clip-persist --clipboard regular --all-mime-type-regex '^(?x-kde-passwordManagerHint).+'"
    "sleep 3 && hyprctl hyprsunset temperature 3300"
  ];
}
