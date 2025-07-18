{
  wayland.windowManager.hyprland.settings = {
    layerrule = [
      "blur,wofi"
    ];

    windowrule = [
      "suppressevent maximize, class:.*"
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
    ];
  };
}
