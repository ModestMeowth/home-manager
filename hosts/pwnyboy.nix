{ pkgs, ... }: {
  home.packages = with pkgs; [
  ];

  programs = {
    k9s.enable = true;
    k9s.settings.k9s.skin = "dracula";
  };
}
