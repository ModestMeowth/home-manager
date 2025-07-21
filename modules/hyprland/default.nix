{ pkgs, ... }: {
  imports = [
    ./settings.nix
    ./style.nix

    ./autostart.nix
    ./bindings.nix
    ./envs.nix
    ./input.nix
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
