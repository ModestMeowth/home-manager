{
  programs.nixvim = {
    diagnostic.config = {
    };

    globals.mapleader = " ";

    opts = {
      mouse = "a";

      clipboard = {
        providers.wl-copy.enable = true;
        register = "unnamedplus";
      };

      signcolumn = "yes";
      number = true;
      relativenumber = true;
      cursorline = true;
      guicursor = "";
      ruler = true;
      scrolloff = 8;
      sidescrolloff = 8;
      wrap = false;

      swapfile = false;
      backup = false;

      # Search
      ignorecase = true;
      smartcase = true;
      hlsearch = true;
      incsearch = true;

      tabstop = 4;
      shiftwidth = 4;
      softtabstop = 0;
      expandtab = true;
      smarttab = true;

      undofile = true;
      undodir.__raw = /* lua */ ''vim.fn.stdpath("data") .. "/undodir"'';
    };
  };
}
