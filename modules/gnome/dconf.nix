{ lib, ... }:
let
  inherit (lib.hm.gvariant) mkTuple mkUint32;
in
{
  dconf.settings = {
    "org/gnome/desktop/applications/terminal".exec = lib.mkDefault "kgx";

    "org/gnome/desktop/background" = {
      primary-color = "#023c88";
      secondary-color = "#5789ca";
      picture-uri = "file:///run/current-system/sw/share/backgrounds/gnome/symbolic-l.png";
      picture-uri-dark = "file:///run/current-system/sw/share/backgrounds/gnome/symbolic-d.png";
    };

    "org/gnome/desktop/screensaver" = {
      primary-color = "#023c88";
      secondary-color = "#5789ca";
      picture-uri = "file:///run/current-system/sw/share/backgrounds/gnome/symbolic-l.png";
      picture-uri-dark = "file:///run/current-system/sw/share/backgrounds/gnome/symbolic-d.png";
    };

    "org/gnome/desktop/input-sources" = {
      sources = [
        (mkTuple [
          "xkb"
          "us"
        ])
      ];
      xkb-options = [
        "terminate:ctrl_alt_bksp"
        "lv3:ralt_switch"
        "compose:ralt"
      ];
    };

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      gitk-enable-primary-paste = true;
      show-battery-percentage = true;
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      numlock-state = true;
    };

    "org/gnome/desktop/wm/keybindings" = {
      switch-input-source = [ ];
      switch-input-source-backward = [ ];
      panel-run-dialog = [ "<Super>space" ];
      close = [ "<Shift><Super>q" ];
      toggle-fullscreen = [ ];
      minimize = [ ];
      maximize = [ ];
      unmaximize = [ ];
      toggle-maximized = [ "<Super>f" ];
      begin-move = [ ];
      begin-resize = [ ];
      toggle-tiled-left = [ ];
      toggle-tiled-right = [ ];
      move-to-monitor-down = [ ];
      move-to-monitor-left = [ ];
      move-to-monitor-right = [ ];
      move-to-monitor-up = [ ];
      move-to-workspace-left = [ "<Shift><Super>h" ];
      move-to-workspace-right = [ "<Shift><Super>l" ];
      move-to-workspace-last = [ ];
      move-to-workspace-1 = [ "<Shift><Super>1" ];
      move-to-workspace-2 = [ "<Shift><Super>2" ];
      move-to-workspace-3 = [ "<Shift><Super>3" ];
      move-to-workspace-4 = [ "<Shift><Super>4" ];
      switch-to-workspace-last = [ ];
      switch-to-workspace-left = [ ];
      switch-to-workspace-right = [ ];
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
      cycle-windows = [ ];
      cycle-windows-backward = [ ];
      cycle-group = [ ];
      cycle-group-backward = [ ];
      switch-group = [ ];
      switch-group-backward = [ ];
    };

    "org/gnome/shell/keybindings" = {
      show-screen-recording-ui = [ "<Super>Print" ];
      focus-active-notificataion = [ ];
      toggle-quick-settings = [ ];
      switch-to-application-1 = [ ];
      switch-to-application-2 = [ ];
      switch-to-application-3 = [ ];
      switch-to-application-4 = [ ];
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      help = [ ];
      screenreader = [ ];
      magnifier = [ ];
      magnifier-zoom-in = [ ];
      magnifier-zoom-out = [ ];
      screensaver = [ "<Control><Alt>Delete" ];
    };

    "org/gnome/mutter/wayland/keybindings" = {
      restore-shortcuts = [ ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      name = "open-terminal";
      command = "xdg-terminal";
      binding = "<Super><Shift>Return";
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
      night-light-schedule-automatic = false;
      night-light-schedule-from = 0.0;
      night-light-schedule-to = 0.0;
      night-light-temperature = mkUint32 3800;
    };

    "org/gtk/gtk4/settings/file-chooser".show-hidden = true;
  };
}
