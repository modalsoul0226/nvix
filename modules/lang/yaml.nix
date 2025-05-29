{ lib, pkgs, ... }:
let
  formatter = [ "yamlfmt" ];
in
{
  plugins.lsp.servers = {
    yamlls.enable = true;
  };

  plugins.conform-nvim.settings = {
    formatters_by_ft = {
      yaml = formatter;
    };
    formatters = {
      yamlfmt = {
        command = lib.getExe pkgs.yamlfmt;
      };
    };
  };
}
