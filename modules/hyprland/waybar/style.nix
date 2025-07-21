{ config, ... }: let
  theme = config.lib.stylix.colors;
  fonts = config.stylix.fonts;
in
{
  programs.waybar.style = # CSS
    ''
      * {
        border: none;
        border-radius: 0;
        min-height: 0;
        font-family: "0xProto Nerd Font Mono";
        font-size: 14px;
      }

      window#waybar {
        opacity: 0.9;
        background-color: #${theme.base00};
        color: #${theme.base05};
        border-bottom: 2px solid #${theme.base01};
      }

      #workspaces {
        margin-left: 7px;
      }

      #workspaces button {
        all: initial;
        padding: 2px 6px;
        margin-right: 3px;
        background: #${theme.base01};
        color: #${theme.base05};
      }

      #workspaces button:hover {
        box-shadow: inherit;
        text-shadow: inherit;
        background-image: linear-gradient(0deg, #${theme.base02}, #${theme.base00});
      }

      #workspaces button:active {
        background-image: linear-gradient(0deg, #${theme.base0F}, #${theme.base00});
      }

      #workspaces button.urgent {
        background-image: linear-gradient(0deg, #${theme.base08}, #${theme.base00});
      }

      #taskbar button.active {
        background-image: linear-gradient(0deg, #${theme.base02}, #${theme.base00});
      }

      #battery,
      #bluetooth,
      #clock,
      #gamemode,
      #power-profiles-daemon,
      #network,
      #tray,
      #wireplumber {
        min-width: 16px;
        margin-right: 18px;
      }

      tooltip {
        padding: 2px;
      }

      tooltip label {
        padding: 2px;
      }
    '';
}
