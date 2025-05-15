{
  programs.zellij.enableFishIntegration = true;

  xdg.configFile = {
    "zellij/config.kdl".text = # kdl
      ''
        copy_command: "wl-copy"
        support_kitty_keyboard_protocol false
        default_mode "normal"
        theme "dracula"

        keybinds {
          unbind "Ctrl t" // interferes with fzf
          tab clear-defaults=true {}
        }

        plugins {
          autolock location="https://github.com/fresh2dev/zellij-autolock/releases/latest/download/zellij-autolock.wasm" {
            triggers "nvim|vim|vi|v|nv"
            watch_triggers "fzf|zoxide|atuin|atac"
            watch_interval "1.0"
          }

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
