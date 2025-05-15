{
  programs.nixvim.plugins = {
    auto-save.enable = true;
    otter.enable = true;
    persistence.enable = true;
    render-markdown.enable = true;
    snacks.enable = true;
    todo-comments.enable = true;
    treesitter.enable = true;
    web-devicons.enable = true;

    snacks.settings = {
      dashboard.enabled = true;
      explorer.enabled = true;
      image.enabled = true;
      indent.enabled = true;
      lazygit.enabled = true;
      notifier.enabled = true;
      picker.enabled = true;
      scope.enabled = true;
      statuscolumn.enabled = true;
      toggle.enabled = true;
      words.enabled = true;
      zen.enabled = true;
    };

    treesitter.settings = {
      highlight.enable = true;
    };
  };
}
