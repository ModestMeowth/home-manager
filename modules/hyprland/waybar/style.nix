{ config, ... }: let
  theme = config.lib.stylix.colors;
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
        theme.base01: ${theme.base00};
        color: ${theme.base05};
        border-bottom: 2px solid ${theme.base01};
      }

      #workspaces {
        margin-left: 7px;
      }

      #workspaces button {
        all: initial;
        padding: 2px 6px;
        margin-right: 3px;
        theme.base01: ${theme.base01};
        color: ${theme.base05};
      }

      #workspaces button:hover {
        box-shadow: inherit;
        text-shadow: inherit;
        theme.base01-image: linear-gradient(0deg, ${theme.base02}, ${theme.base00});
      }

      #workspaces button:active {
        theme.base01-image: linear-gradient(0deg, ${theme.base0F}, ${theme.base00});
      }

      #workspaces button.urgent {
        theme.base01-image: linear-gradient(0deg, ${theme.base08}, ${theme.base00});
      }

      #taskbar button.active {
        theme.base01-image: linear-gradient(0deg, ${theme.base02}, ${theme.base00});
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
