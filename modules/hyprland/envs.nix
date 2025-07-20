{
  wayland.windowManager.hyprland.settings.env = [
    "XCURSOR_SIZE,24"
    "HYPRCURSOR_SIZE,24"

    "GDK_BACKEND,wayland"
    "SDL_VIDEODRIVER,wayland"
    "MOZ_ENABLE_WAYLAND,1"
    "ELECTRON_OZONE_PLATFORM_HINT,wayland"
    "OZONE_PLATFORM,wayland"
    ''CHROMIUM_FLAGS,"--enable-features=UseOzonePlatform --ozone-platform=wayland --gtk-version=4"''

    "QT_QPA_PLATFORM,wayland"
    "QT_QPA_PLATFORMTHEME,qt5ct"
    "QT_STYLE_OVERRIDE,Adwaita-Dark"
  ];
}
