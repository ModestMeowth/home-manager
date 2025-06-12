{ pkgs, ...}: {
  home.packages = with pkgs; [
    delve
  ];

  programs.nixvim.plugins = {
    dap.enable = true;
    dap-ui.enable = true;
    dap-virtual-text.enable = true;

    dap-go.enable = true;
    dap-python.enable = true;
    dap-rr.enable = true;
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>dt";
      action.__raw = ''require"dap".toggle_breakpoint'';
    }
    {
      mode = "n";
      key = "<leader>dc";
      action.__raw = ''require"dap".continue'';
    }
    {
      mode = "n";
      key = "<leader>ut";
      action.__raw = ''function() require"dapui".toggle() end'';
    }
  ];
}
