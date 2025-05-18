{
  programs.nixvim.plugins.treesitter-textobjects = {
    enable = true;
    select = {
      enable = true;
      lookahead = true;
      keymaps = {
        "af" = "@function.outer";
        "if" = "@function.inner";
        "ac" = "@class.outer";
        "ao" = "@comment.outer";
        "ic" = {
          query = "@class.inner";
          desc = "Select inner part of a class region";
        };
        "as" = {
          query = "@local.scope";
          queryGroup = "locals";
          desc = "Select language scope";
        };
      };

      selectionModes = {
        "@parameter.outer" = "v";
        "@function.outer" = "V";
        "@class.outer" = "<c-v>";
      };

      includeSurroundingWhitespace = true;
    };

    swap = {
      enable = true;
      swapNext = {
        "<leader>a" = {
          query = "@parameter.inner";
          desc = "Swap with next parameter";
        };
      };
      swapPrevious = {
        "<leader>A" = "@parameter.inner";
      };
    };
  };
}
