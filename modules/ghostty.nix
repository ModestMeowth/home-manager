{config, ...}: let
  fonts = config.stylix.fonts;
in {
  programs.ghostty = {
    enableBashIntegration = true;
    enableFishIntegration = true;
    enableZshIntegration = true;

    installBatSyntax = true;

    settings = {
      font-family = fonts.monospace.name;
      font-size = 10;
      keybind = [
        "clear"
      ];
      theme = "Dracula";
    };
  };
}
