{
  programs.nixvim = {
    enable = true;
    viAlias = true;
    vimAlias = true;

    colorschemes = {
      dracula-nvim.enable = true;
    };

    globals.mapleader = " ";
    luaLoader.enable = true;

    opts = {
      mouse = "a";

      clipboard = {
        providers.wl-copy.enable = true;
        register = "unnamedplus";
      };

      number = true;
      relativenumber = true;
      cursorline = true;
      guicursor = "";
      ruler = true;
      scrolloff = 8;
      sidescrolloff = 8;
      wrap = false;

      backup = false;
      swapfile = false;

      ignorecase = true;
      smartcase = true;
      hlsearch = true;
      incsearch = true;

      undofile = true;
      undodir.__raw = /*lua*/ ''vim.fn.stdpath("data") .. "/undodir"'';
    };
  };
}
