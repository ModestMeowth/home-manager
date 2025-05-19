{
  programs.zellij.enableFishIntegration = true;

  xdg.configFile = {
    "zellij/config.kdl".text = # kdl
      ''
        copy_command: "wl-copy"
        support_kitty_keyboard_protocol true
        default_mode "normal"
        theme "dracula"

        keybinds {
          unbind "Ctrl t" // interferes with fzf
          tab clear-defaults=true {}
          tmux {
            bind "\\" { NewPane "Right"; SwitchToMode "Normal"; }
            bind "|" { NewPane "Right"; SwitchToMode "Normal"; }
            bind "-" { NewPane "Down"; SwitchToMode "Normal"; }
            bind "_" { NewPane "Down"; SwitchToMode "Normal"; }
          }
        }


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
            plugin location="compact-bar"
          }
        }
      '';
  };
}
