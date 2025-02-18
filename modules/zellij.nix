{
  programs.zellij.enableFishIntegration = true;

  xdg.configFile = {
    "zellij/config.kdl".text = # kdl
      ''
                support_kitty_keyboard_protocol false
                default_mode "normal"

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


                theme "dracula"
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
