{
  programs.nixvim.plugins = {
    oil = {
      enable = true;
      settings.win_options.signcolumn = "yes:2";
    };

    oil-git-status.enable = true;
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "-";
      action = "<cmd>Oil --float<CR>";
      options.desc = "Open parent directory in Oil";
    }
  ];
}
