{
  programs.nixvim.plugins = {
    cloak.enable = true;
    commentary.enable = true;
    fidget.enable = true;
    # image.enable = true;
    # render-markdown.enable = true;
    # markdown-preview.enable = true;
    telescope.enable = true;
    treesitter.enable = true;
    trouble.enable = true;
    undotree.enable = true;
    vim-suda.enable = true;
    web-devicons.enable = true;

    fidget.settings.progress = {
      suppress_on_insert = true;
      ignore_done_already = false;
    };

    # image.maxHeightWindowPercentage = 25;
    # image.tmuxShowOnlyInActiveWindow = true;
    # image.integrations.markdown.filetypes = [
    #   "markdown"
    #   "vimwiki"
    #   "mdx"
    # ];

    # markdown-preview.settings.theme = "dark";

    telescope.extensions = {
      fzf-native.enable = true;
    };

    telescope.settings = {
      defaults = {
        layout_config.horizontal.width = 0.9;
      };
    };

    treesitter.settings = {
      highlight.enable = true;
    };

    undotree.settings = {
      autoOpenDiff = true;
      focusOnToggle = true;
    };
  };
}
