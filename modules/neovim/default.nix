{
  imports = [
    ./options.nix
    ./keymaps.nix
    ./plugins.nix
    ./lsp.nix
  ];

  programs.nixvim = {
    enable = true;
    viAlias = true;
    vimAlias = true;

    extraConfigVim = "";
    colorschemes.dracula-nvim.enable = true;

    extraConfigLuaPre = # lua
      ''
        if vim.g.have_nerd_font then
          require('nvim-web-devicons').setup {}
        end
      '';

    extraConfigLuaPost = # lua
      ''
        -- vim: ts=2 sts=2 sw=2 et
      '';
  };
}
