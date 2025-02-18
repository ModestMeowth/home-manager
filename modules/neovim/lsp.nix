{ pkgs, ... }: {
  programs.nixvim.plugins = {
    cmp.enable = true;
    cmp-emoji.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp_luasnip.enable = true;
    cmp-cmdline.enable = true;
    lsp.enable = true;
    luasnip.enable = true;
    nix.enable = true;
    otter.enable = true;
    schemastore.enable = true;
    schemastore.yaml.enable = true;
    schemastore.json.enable = true;

    luasnip.settings = {
      enable_autosnippets = true;
      store_selection_keys = "<Tab>";
    };

    cmp.settings = {
      autoEnableSources = true;
      experimental.ghost_text = true;
      performance.fetchingTimeout = 200;
      performance.maxViewEntries = 30;
      window.completion.border = "solid";
      window.documentation.border = "solid";
      snippet.expand = # lua
        ''
          function(args)
            require('luasnip').lsp_expand(args.body)
          end
        '';

      sources = [
        {
          name = "nvim_lsp";
        }
        {
          name = "emoji";
        }
        {
          name = "buffer";
        }
        {
          name = "path";
        }
        {
          name = "luasnip";
        }
      ];
    };

    lsp.servers = {
      bashls.enable = true;
      clangd.enable = true;
      cssls.enable = true;
      dockerls.enable = true;

      gopls = {
        enable = true;
        autostart = true;
      };

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
