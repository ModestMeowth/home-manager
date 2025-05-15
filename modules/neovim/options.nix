{
  programs.nixvim = {
    enable = true;
    viAlias = true;
    vimAlias = true;

    colorschemes = {
      dracula-nvim.enable = true;
    };

    diagnostic.settings = {
      virtual_lines.current_line = false;
      virtual_text = false;
    };

    globals.mapleader = " ";
    luaLoader.enable = true;

    opts = {
      mouse = "a";

      clipboard = {
        providers.wl-copy.enable = true;
        register = "unnamedplus";
      };

      backup = false;
      swapfile = false;

      wrap = false;
    };
  };
}
