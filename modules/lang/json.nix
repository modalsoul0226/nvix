{ lib, pkgs, ... }:
let formatter = [ "jq" ];
in {
  plugins.lsp.servers = {
    jsonls.enable = true;
  };

  plugins.conform-nvim.settings = {
    formatters_by_ft = {
      json = formatter;
    };
    formatters = {
      jq = { command = lib.getExe pkgs.jq; };
    };
  };
}
