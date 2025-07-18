{ pkgs, ... }:
let
  gtkTheme = "Dracula";
  terminal = "ghostty";
  btUtil = "blueberry";
  volUtil = "pwvucontrol";

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
  home.packages = with pkgs; [
    blueberry
    pwvucontrol
  ];

  programs.waybar = {
    enable = true;
    package = pkgs.unstable.waybar;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        spacing = 0;
        height = 26;

        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "clock" ];
        modules-right = [
          "tray"
          "gamemode"
          "power-profiles-daemon"
          "bluetooth"
          "network"
          "wireplumber"
          "battery"
        ];

        gamemode = {
          format = "{glyph}";
          format-alt = "{glyph} {count}";
          glyph = "";
          hide-not-running = true;
          use-icon = true;
          icon-name = "input-gaming-symbolic";
          icon-spacing = 4;
          icon-size = 20;
          tooltip = true;
          tooltip-format = "Games running: {count}";
        };

        power-profiles-daemon = {
          format = "{icon}";
          tooltip-format = "Power profile: {profile}\nDriver: {driver}";
          tooltip = true;
          format-icons = {
            default = "";
            performance = "";
            balanced = "";
            power-saver = "";
          };
        };

        "hyprland/workspaces" = {
          "on-click" = "activate";
          "format" = "{icon}";
          "format-icons" = {
            "default" = "";
            "1" = "1";
            "2" = "2";
            "3" = "3";
            "4" = "4";
            "5" = "5";
            "6" = "6";
            "7" = "7";
            "8" = "8";
            "9" = "9";
            "active" = "󱓻";
          };

          persistent-workspaces = {
            "1" = [ ];
            "2" = [ ];
            "3" = [ ];
            "4" = [ ];
            "5" = [ ];
          };
        };

        clock = {
          format = "{:%A %H:%M}";
          format-alt = "{:%d %B W%V %Y}";
          tooltip = false;
        };

        network = {
          format-icons = [
            "󰤯"
            "󰤟"
            "󰤢"
            "󰤥"
            "󰤨"
          ];
          format = "{icon}";
          format-wifi = "{icon}";
          format-ethernet = "";
          format-disconnected = "";
          tooltip-format-wifi = "{essid} ({frequency} GHz)\n⇣{bandwidthDownBytes}  ⇡{bandwidthUpBytes}";
          tooltip-format-ethernet = "⇣{bandwidthDownBytes}  ⇡{bandwidthUpBytes}";
          tooltip-format-disconnected = "Disconnected";
          interval = 3;
          nospacing = 1;
          on-click = "${terminal} -e nmtui";
        };

        battery = {
          format = "{capacity}% {icon}";
          format-discharging = "{capacity}% {icon}";
          format-charging = "{capacity}% {icon}";
          format-plugged = "";
          format-icons = {
            charging = [
              "󰢜"
              "󰂆"
              "󰂇"
              "󰂈"
              "󰢝"
              "󰂉"
              "󰢞"
              "󰂊"
              "󰂋"
              "󰂅"
            ];
            default = [
              "󰁺"
              "󰁻"
              "󰁼"
              "󰁽"
              "󰁾"
              "󰁿"
              "󰂀"
              "󰂁"
              "󰂂"
              "󰁹"
            ];
          };

          format-full = "Charged ";
          tooltip-format-discharging = "{power:>1.0f}W↓ {capacity}%";
          tooltip-format-charging = "{power:>1.0f}W↑ {capacity}%";
          interval = 5;
          states = {
            warning = 20;
            critical = 10;
          };
        };

        bluetooth = {
          format = "";
          format-disabled = "󰂲";
          format-connected = "";
          tooltip-format = "Devices connected: {num_connections}";
          on-click = "GTK_THEME=${gtkTheme} ${btUtil}";
        };

        wireplumber = {
          format = "{icon} {volume}%";
          format-muted = "";
          format-icons = [
            ""
            ""
            ""
          ];
          scroll-step = 5;
          on-click = "GTK_THEME=${gtkTheme} ${volUtil}";
          tooltip-format = "Playing at {volume}%";
        };

        tray = {
          icon-size = 21;
          spacing = 10;
        };
      };
    };

    style = # CSS
      ''
        * {
          border: none;
          border-radius: 0;
          min-height: 0;
          font-family: Ubuntu Nerd Font Mono;
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
  };
}
