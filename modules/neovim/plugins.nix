{
  programs.nixvim.plugins = {
    cloak.enable = true;
    commentary.enable = true;
    fidget.enable = true;
    image.enable = true;
    render-markdown.enable = true;
    markdown-preview.enable = true;
    spider.enable = true;
    telescope.enable = true;
    treesitter.enable = true;
    trouble.enable = true;
    undotree.enable = true;
    vim-suda.enable = true;
    web-devicons.enable = true;

    cloak.settings = {
      patterns = [
        {
          file_pattern = [
            ".env"
          ];
          cloak_pattern = "=.+";
        }
      ];
    };

    fidget.settings.progress = {
      suppress_on_insert = true;
      ignore_done_already = false;
    };

    image.settings = {
      maxHeightWindowPercentage = 25;
      tmuxShowOnlyInActiveWindow = true;
      integrations.markdown.filetypes = [
        "markdown"
        "vimwiki"
        "mdx"
      ];
    };

    markdown-preview.settings.theme = "dark";

    spider.keymaps.motions = {
      b = "b";
      e = "e";
      ge = "ge";
      w = "w";
    };

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
