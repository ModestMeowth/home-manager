{
  programs.ghostty = {
    enableBashIntegration = true;
    enableFishIntegration = true;
    enableZshIntegration = true;

    installBatSyntax = true;

    settings = {
      font-family = "0xProto Nerd Font Mono";
      font-size = 10;
      keybind = [
        "clear"
      ];
      theme = "Dracula";
    };
  };
}
