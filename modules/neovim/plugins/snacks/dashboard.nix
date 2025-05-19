{ pkgs, ... }: {
  home.packages = with pkgs; [
    dwt1-shell-color-scripts
  ];

  programs.gh.extensions = with pkgs; [
    gh-notify
  ];

  programs.nixvim.plugins.snacks.settings.dashboard = {
    enabled = true;

    sections = [
      {
        section = "header";
      }
      {
        pane = 2;
        section = "terminal";
        cmd = "colorscript -e square";
        height = 5;
        padding = 1;
      }
      {
        section = "keys";
        gap = 1;
        padding = 1;
      }
      {
        pane = 2;
        icon = " ";
        desc = "Browse Repo";
        padding = 1;
        key = "b";
        action.__raw = ''function() Snacks.gitbrowse() end'';
      }
      {
        title = "Notifications";
        cmd = "gh notify -s -a -n5";
        action.__raw = ''function() vim.ui.open("https://github.com/notifications") end'';
        key = "n";
        icon = " ";
        height = 5;
        enabled = true;
        pane = 2;
        section = "terminal";
        padding = 1;
        ttl = 5 * 60;
        indent = 3;
      }
      {
        title = "Open Issues";
        cmd = "gh issue list -L 3";
        key = "i";
        action.__raw = ''function() vim.fn.jobstart("gh issue list --web", { detach = true }) end'';
        icon = " ";
        height = 7;
        pane = 2;
        section = "terminal";
        enabled.__raw = ''Snacks.git.get_root() ~= nil'';
        padding = 1;
        ttl = 5 * 60;
        indent = 3;
      }
      {
        icon = " ";
        title = "Open PRs";
        cmd = "gh pr list -L 3";
        key = "P";
        action.__raw = ''function() vim.fn.jobstart("gh pr list --web", { detach = true }) end'';
        height = 7;
        pane = 2;
        section = "terminal";
        enabled.__raw = ''Snacks.git.get_root() ~= nil'';
        padding = 1;
        ttl = 5 * 60;
        indent = 3;
      }
      {
        icon = " ";
        title = "Git Status";
        cmd = "git --no-pager diff --stat -B -M -C";
        height = 10;
        pane = 2;
        section = "terminal";
        enabled.__raw = ''Snacks.git.get_root() ~= nil'';
        padding = 1;
        ttl = 5 * 60;
        indent = 3;
      }
    ];
  };
}
