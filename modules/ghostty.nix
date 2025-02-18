{ pkgs, ... }: {
  programs.ghostty = {
    package = pkgs.unstable.ghostty;

    enableBashIntegration = true;
    enableFishIntegration = true;
    enableZshIntegration = true;

    installBatSyntax = true;

    settings.theme = "Dracula";
    settings.keybind = [
      "clear"
    ];
  };
}
