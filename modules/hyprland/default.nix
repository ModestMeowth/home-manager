{ pkgs, ... }: {
  imports = [
    ./autostart.nix
    ./bindings.nix
    ./envs.nix
    ./input.nix
    ./appearance.nix
    ./style.nix
    ./windows.nix

    ./hypridle.nix
    ./hyprlock
    ./mako
    ./waybar
    ./wofi
  ];

  home.packages = with pkgs; [
    blueberry
    brightnessctl
    hyprpicker
    hyprshot
    playerctl
    pwvucontrol
    unstable.wiremix
    wl-clip-persist
  ];

  wayland.windowManager.hyprland = {
    enable = true;
  };
}
