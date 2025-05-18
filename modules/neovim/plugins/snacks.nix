{
  programs.nixvim.plugins.snacks = {
    enable = true;

    settings = {
      dashboard.enabled = true;
      explorer.enabled = true;
      image.enabled = true;
      indent.enabled = true;
      lazygit.enabled = true;
      notifier.enabled = true;
      picker.enabled = true;
      scope.enabled = true;
      statuscolumn.enabled = true;
      toggle.enabled = true;
      words.enabled = true;
      zen.enabled = true;
    };
  };

  programs.nixvim.keymaps = [
    {
      key = "<leader>ee";
      action.__raw = ''function() require"snacks".explorer() end'';
      options.desc = "File Explorer";
    }
    {
      key = "<leader>pf";
      action.__raw = ''function() require"snacks".picker.files() end'';
      options.desc = "Find Files";
    }
    {
      key = "<leader>/";
      action.__raw = ''function() require"snacks".picker.grep() end'';
      options.desc = "Grep";
    }
    {
      key = "<leader>pr";
      action.__raw = ''function() require"snacks".picker.registers() end'';
      options.desc = "Registers";
    }
    {
      key = "<leader>pk";
      action.__raw = ''function() require"snacks".picker.keymaps() end'';
    }
    {
      key = "gd";
      action.__raw = ''function() require"snacks".picker.lsp_definitions() end'';
      options.desc = "Goto Definition";
    }
    {
      key = "gD";
      action.__raw = ''function() require"snacks".picker.lsp_declarations() end'';
      options.desc = "Goto Declaration";
    }
    {
      key = "gr";
      action.__raw = ''function() require"snacks".picker.lsp_references() end'';
      options.nowait = true;
      options.desc = "References";
    }
    {
      key = "gI";
      action.__raw = ''function() require"snacks".picker.lsp_implementation() end'';
      options.desc = "Goto Implementation";
    }
    {
      key = "gy";
      action.__raw = ''function() require"snacks".picker.lsp_type_definitions() end'';
      options.desc = "Goto T[y]pe Definition";
    }
    {
      key = "<leader>ss";
      action.__raw = ''function() require"snacks".picker.lsp_symbols() end'';
      options.desc = "LSP Symbols";
    }
    {
      key = "<leader>sS";
      action.__raw = ''function() require"snacks".picker.lsp_workspace_symbols() end'';
      options.desc = "LSP Workspaces Symbols";
    }
  ];
}
