{
  programs.ghostty = {
    enableBashIntegration = true;
    enableFishIntegration = true;
    enableZshIntegration = true;

    installBatSyntax = true;

    settings = {
      font-family = "UbuntuMono Nerd Font";
      keybind = [
        "clear"
      ];
      theme = "Dracula";
    };
  };
}
