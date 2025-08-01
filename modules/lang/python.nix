{ lib, pkgs, ... }:
let
  formatter = [
    "black"
    "isort"
  ];
in
{
  plugins.lsp.servers = {
    # ruff.enable = true;
    pyright = {
      enable = true;
      settings = {
        pyright.disableOrganizeImports = true;
        python.analysis.ignore = [ "*" ];
      };
    };
    pylsp = {
      settings = {
        plugins.pylint.enable = true;
      };
    };
  };

  plugins.conform-nvim.settings = {
    formatters_by_ft = {
      python = formatter;
    };
    formatters = {
      black = {
        command = lib.getExe pkgs.black;
      };
      isort = {
        command = lib.getExe pkgs.isort;
      };
    };
  };
}
