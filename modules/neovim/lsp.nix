{ pkgs, ... }: {
  programs.nixvim.plugins = {
    lsp.enable = true;
    luasnip.enable = true;
    nix.enable = true;
    schemastore.enable = true;
    schemastore.yaml.enable = true;
    schemastore.json.enable = true;

    lsp.servers = {
      bashls.enable = true;
      clangd.enable = true;
      cssls.enable = true;
      dockerls.enable = true;

      gopls = {
        enable = true;
        autostart = true;
      };

      harper_ls.enable = true;
      html.enable = true;
      htmx.enable = true;
      jsonls.enable = true;
      ltex.enable = true;

      lua_ls.enable = true;
      lua_ls.settings = {
        diagnostics.globals = [ "vim" ];
        telemetry.enable = false;
      };

      marksman.enable = true;
      nil_ls.enable = true;
      pyright.enable = true;

      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
        cargoPackage = pkgs.unstable.cargo;
        rustcPackage = pkgs.unstable.rustc;
      };

      tailwindcss.enable = true;
      taplo.enable = true;
      terraformls.enable = true;
      ts_ls.enable = true;
      vimls.enable = true;
      yamlls.enable = true;
      zls.enable = true;
    };
  };
}
