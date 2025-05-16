{
  programs.nixvim.plugins = {
    blink-cmp.enable = true;
    blink-cmp-git.enable = true;
    blink-emoji.enable = true;

    blink-cmp.settings.sources = {
      default = [
        "lsp"
        "path"
        "snippets"
        "buffer"
        "git"
      ];

      providers = {
        emoji = {
          module = "blink-emoji";
          name = "emoji";
          score_offset = 15;
        };

        git = {
          module = "blink-cmp-git";
          name = "git";
          score_offset = 100;
        };
      };
    };

    luasnip.settings = {
      enable_autosnippets = true;
      store_selection_keys = "<Tab>";
    };
  };
}
