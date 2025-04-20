{
  programs.zellij.enableFishIntegration = true;

  xdg.configFile = {
    "zellij/config.kdl".text = # kdl
      ''
        copy_command: "wl-copy"
        default_mode "normal"
        theme "dracula"

        plugins {
          tab-bar {
            path "tab-bar"
          }

          status-bar {
            path "status-bar'"
          }

          compact-bar {
            path "compact-bar"
          }
        }

        ui {
          pane_frames {
            rounded_corners true
          }
        }
      '';

    "zellij/layouts/default.kdl".text = # kdl
      ''
        layout {
          pane
          pane size=1 borderless=true {
            plugin location="zellij:tab-bar"
          }
        }
      '';
  };
}
