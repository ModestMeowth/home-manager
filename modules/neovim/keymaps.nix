{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "Q";
      action = "<nop>";
    }
    {
      mode = "v";
      key = "<leader>y";
      action = ''"+y'';
    }
    {
      mode = "n";
      key = "<leader>y";
      action = ''"+yy'';
    }
    {
      mode = [ "n" "v" ];
      key = "<leader>p";
      action = ''"+p'';
    }
    {
      mode = [ "n" "v" ];
      key = "<leader>P";
      action = ''"+P'';
    }
    {
      mode = "i";
      key = "jj";
      action = "<Esc>";
    }
    {
      mode = "n";
      key = "vv";
      action = "V";
    }
    {
      mode = "n";
      key = "V";
      action = "v$";
    }
    {
      mode = "n";
      key = "<leader>k";
      action = "vim.lsp.buf.hover";
    }
  ];
}
