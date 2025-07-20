let
  background-darker = "rgba(30, 31, 41, 230)";
  background = "#282a36";
  selection = "#44475a";
  foreground = "#f8f8f2";
  comment = "#6272a4";
  cyan = "#8be9fd";
  green = "#50fa7b";
  orange = "#ffb86c";
  pink = "#ff79c6";
  purple = "#bd93f9";
  red = "#ff5555";
  yellow = "#f1fa8c";
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
        background: ${background-darker};
        color: ${foreground};
        border-bottom: 2px solid ${background};
      }

      #workspaces {
        margin-left: 7px;
      }

      #workspaces button {
        all: initial;
        padding: 2px 6px;
        margin-right: 3px;
        background: ${background};
        color: ${foreground};
      }

      #workspaces button:hover {
        box-shadow: inherit;
        text-shadow: inherit;
        background-image: linear-gradient(0deg, ${selection}, ${background-darker});
      }

      #workspaces button:active {
        background-image: linear-gradient(0deg, ${purple}, ${background-darker});
      }

      #workspaces button.urgent {
        background-image: linear-gradient(0deg, ${red}, ${background-darker});
      }

      #taskbar button.active {
        background-image: linear-gradient(0deg, ${selection}, ${background-darker});
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
