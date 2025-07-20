{
  wayland.windowManager.hyprland.settings = {
    layerrule = [
      "blur,wofi"
    ];

    windowrule = [
      "tile, class:^(Chromium)$"
      "float, class:^(steam)$"
      "fullscreen, class:^(com.libretro.RetroArch)$"
      "opacity, 0.97 0.9, class:.*"
      "opacity, 1 0.97, class:^(Chromium|chromium|google-chrome|google-chrome-unstable)$"
      "opacity, 1 1, initialTitle:^(youtube.com_/)$"
      "opacity, 1 1, class:^(vlc|mpv)"
      "opacity, 1 1, class:^(com.libretro.RetroArch|steam)"
      "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      "float, class:xdg-desktop-portal-gtk, title:^(Open.*Files?|Save.*Files?)"
      "center, class:xdg-desktop-portal-gtk, title:^(Open.*Files?|Save.*Files?)"

      "float,class:^(Bitwarden)$"
      "center,class:^(Bitwarden)$"
      "float,class:^(blueberry.py)"
      "center,class:^(blueberry.py)"

      "float,class:^(firefox)$,title:^(Picture-in-Picture)$"
      "pin,class:^(firefox)$,title:^(Picture-in-Picture)$"
      "float,class:^(firefox)$,title:^(Firefox — Sharing Indicator$"
    ];

    workspace = [
      "special:passwordManager, on-created-empty:[float] bitwarden"
      "special:scratchPad, on-created-empty:[float] ghostty"
      "special:networkManager, on-created-empty:[float] ghostty -e nmtui"
      "special:bluetooth, on-created-empty:[float] blueberry"
      "special:volume, on-created-empty:[float] pwvucontrol"
      "special:mixer, on-created-empty:[float] ghostty -e wiremix"

      "w[tv1]s[false], gapsout:0, gapsin:0"
      "f[1]s[false], gapsout:0, gapsin:0"
      "bordersize 0, floating: 0, onworkspace:w[tv1]s[false]"
      "rounding 0, floating: 0, onworkspace:w[tv1]s[false]"
      "bordersize 0, floating: 0, onworkspace:f[1]s[false]"
      "rounding 0, floating: 0, onworkspace:f[1]s[false]"
    ];
  };
}
