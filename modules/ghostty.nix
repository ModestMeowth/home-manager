{ pkgs, ... }: {
  programs.ghostty = {
    package = pkgs.unstable.ghostty;

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
