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

      # Snacks
      {
        key = "<leader>ee";
        action.__raw = "function() require\"snacks\".explorer() end";
        options.desc = "File Explorer";
      }
      {
        key = "<leader>pf";
        action.__raw = "function() require\"snacks\".picker.files() end";
        options.desc = "Find Files";
      }
      {
        key = "<leader>/";
        action.__raw = "function() require\"snacks\".picker.grep() end";
        options.desc = "Grep";
      }
      {
        key = "<leader>pr";
        action.__raw = "function() require\"snacks\".picker.registers() end";
        options.desc = "Registers";
      }
      {
        key = "gd";
        action.__raw = "function() require\"snacks\".picker.lsp_definitions() end";
        options.desc = "Goto Definition";
      }
      {
        key = "gD";
        action.__raw = "function() require\"snacks\".picker.lsp_declarations() end";
        options.desc = "Goto Declaration";
      }
      {
        key = "gr";
        action.__raw = "function() require\"snacks\".picker.lsp_references() end";
        options.nowait = true;
        options.desc = "References";
      }
      {
        key = "gI";
        action.__raw = "function() require\"snacks\".picker.lsp_implementation() end";
        options.desc = "Goto Implementation";
      }
      {
        key = "gy";
        action.__raw = "function() require\"snacks\".picker.lsp_type_definitions() end";
        options.desc = "Goto T[y]pe Definition";
      }
      {
        key = "<leader>ss";
        action.__raw = "function() require\"snacks\".picker.lsp_symbols() end";
        options.desc = "LSP Symbols";
      }
      {
        key = "<leader>sS";
        action.__raw = "function() require\"snacks\".picker.lsp_workspace_symbols() end";
        options.desc = "LSP Workspaces Symbols";
      }
   ];
}
