{ pkgs, ... }: {
  shell.aliases = {
    ssh = "mosh";
    j = "just";
    cd = "__zoxide_z";
    zi = "__zoxide_zi";
  };

  programs = {
    bat = {
      enable = true;
      extraPackages = with pkgs.bat-extras; [
        batman
        batdiff
        prettybat
      ];

      config = {
        theme = "Dracula";
      };
    };

    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };

    eza = {
      enable = true;
      icons = "auto";
      extraOptions = [
        "--color=always"
        "--sort=type"
      ];

      enableBashIntegration = true;
      enableFishIntegration = true;
      enableNushellIntegration = false;
      enableZshIntegration = true;
    };

    fd = {
      enable = true;

      extraOptions = [
        "--no-require-git"
      ];

      hidden = true;
      ignores = [ ".git/*" "*.bak" ];
    };

    fzf = {
      enable = true;

      colors = {
        fg = "#f8f8f2";
        bg = "#282a36";
        hl = "#bd93f9";
        "fg+" = "#f8f8f2";
        "bg+" = "#44475a";
        "hl+" = "#bd93f9";
        info = "#ffb86c";
        prompt = "#50fa7b";
        pointer = "#ff78c6";
        marker = "#ff79c6";
        spinner = "#ffb86c";
        header = "#6272a4";
      };

      defaultOptions = [
        "--cycle"
        "--layout=reverse"
        "--border"
        "--height=90%"
        "--marker=*"
      ];

      enableBashIntegration = true;
      enableFishIntegration = true;
      enableZshIntegration = true;
    };

    gh.enable = true;
    home-manager.enable = true;
    man.generateCaches = true;
    starship.enable = true;
    zellij.enable = true;
    zoxide.enable = true;
  };
}
