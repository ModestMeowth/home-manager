{
  programs.nixvim.plugins.treesitter = {
    enable = true;
    settings = {
      highlight.enable = true;
      indent.enable = true;
      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = "<Enter>";
          node_decremental = "<Backspace>";
          node_incremental = "<Enter>";
          scope_incremental = false;
        };
      };
    };
  };
}
