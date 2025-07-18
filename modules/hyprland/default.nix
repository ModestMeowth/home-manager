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
    wl-clip-persist
  ];

  wayland.windowManager.hyprland = {
    enable = true;
  };
}
