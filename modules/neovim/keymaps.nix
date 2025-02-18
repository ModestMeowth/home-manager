{
  programs.nixvim = {
    plugins.lsp.keymaps.extra = [
      {
        mode = "n";
        key = "gD";
        action = # lua
          "vim.lsp.buff.declaration";
      }
      {
        mode = "n";
        key = "gD";
        action = # lua
          "vim.lsp.buff.definition";
      }
      {
        mode = "n";
        key = "gi";
        action = # lua
          "vim.lsp.buff.implementation";
      }
      {
        mode = "n";
        key = "<leader>k";
        action = # lua
          "vim.lsp.buf.hover";
      }
      {
        mode = "n";
        key = "<C-k>";
        action = # lua
          "vim.lsp.buf.signature_help";
      }
      {
        mode = "n";
        key = "<leader>R";
        action = # lua
          "vim.lsp.buf.rename";
      }
      {
        mode = [ "n" "v" ];
        key = "<leader>a";
        action = # lua
          "vim.lsp.buf.code_action";
      }
      {
        mode = "n";
        key = "<leader>r";
        action.__raw = # lua
          ''
            require("telescope.builtin").lsp_references
          '';
      }
    ];

    keymaps = [
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

      # LSP
      {
        mode = "n";
        key = "gD";
        action = # lua
          "vim.lsp.buf.declaration";
      }
      {
        mode = "n";
        key = "gd";
        action = # lua
          "vim.lsp.buf.definition";
      }
      {
        mode = "n";
        key = "gi";
        action = # lua
          "vim.lsp.buf.implementation";
      }
      {
        mode = "n";
        key = "<leader>k";
        action = #lua
          "vim.lsp.buf.hover";
      }
      {
        mode = "n";
        key = "<C-k>";
        action = # lua
          "vim.lsp.buf.signature_help";
      }
      {
        mode = "n";
        key = "<leader>R";
        action = # lua
          "vim.lsp.buf.rename";
      }
      {
        mode = [ "n" "v" ];
        key = "<leader>a";
        action = # lua
          "vim.lsp.buf.code_action";
      }
      {
        mode = "n";
        key = "<leader>r";
        action.__raw = #lua
          ''require("telescope.builtin").lsp_references'';
      }

      # Telescope
      {
        mode = "n";
        key = "<leader>pf";
        action = "<cmd>Telescope find_files<CR>";
      }
      {
        mode = "n";
        key = "<C-p>";
        action = "<cmd>Telescope git_files<CR>";
      }
      {
        mode = "n";
        key = "<leader>vh";
        action = "<cmd>Telescope help_tags<CR>";
      }

      # Trouble
      {
        mode = "n";
        key = "<leader>tt";
        action.__raw = # lua
          ''function() require("trouble").toggle() end'';
      }
      {
        mode = "n";
        key = "[t";
        action.__raw = # lua
          ''
            function()
              require("trouble").next({
                skip_groups = true,
                jump = true,
              })
            end
          '';
      }
      {
        mode = "n";
        key = "]t";
        action.__raw = # lua
          ''
            function()
              require("trouble").previous({
                skip_groups = true,
                jump = true,
              })
            end
          '';
      }
      {
        mode = "n";
        key = "<leader>e";
        action = # lua
          ''
            vim.diagnostic.open_float
          '';
      }

      # Suda
      {
        mode = "c";
        key = "r!!";
        action = "<cmd>SudaRead %";
      }
      {
        mode = "c";
        key = "w!!";
        action = "<cmd>SudaWrite %";
      }

      # Undotree
      {
        mode = "n";
        key = "<leader>u";
        action = "<cmd>UndotreeToggle<CR>";
      }
    ];
  };
}
