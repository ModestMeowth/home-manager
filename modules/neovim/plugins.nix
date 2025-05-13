{
  programs.nixvim.plugins = {
    snacks.enable = true;
    snacks.settings = {
      dashboard.enabled = true;
      explorer.enabled = true;
      image.enabled = true;
      indent.enabled = true;
      lazygit.enabled = true;
      notifier.enabled = true;
      picker.enabled = true;
      scope.enabled = true;
      statuscolumn = {
        enabled = true;
        left = ["mark" "sign"];
        right = ["fold" "git"];
        folds = {
          open = false;
          git_hl = false;
        };
        git.patterns = ["GitSign" "MiniDiffSign"];
        refresh = 50;
      };
    };

    treesitter.enable = true;
    treesitter.settings = {
      highlight.enable = true;
    };

    web-devicons.enable = true;
  };
}
