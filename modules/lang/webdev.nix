{ lib, pkgs, ... }:
{
  plugins = {
    ts-autotag.enable = true;
    ts-comments.enable = true;
    lsp.servers = {
      ts_ls.enable = true;
      tailwindcss.enable = true;
      svelte.enable = true;
      jsonls.enable = true;
      html.enable = true;
      eslint.enable = true;
      emmet_ls.enable = true;
      cssls.enable = true;
      biome.enable = true;
      volar.enable = true;
    };

    conform-nvim.settings = {
      formatters_by_ft = {
        svelte = [ "prettierd" ];
        vue = [ "prettierd" ];
      };
      formatters = {
        prettierd = {
          command = lib.getExe pkgs.prettierd;
        };
      };
    };
  };
}
