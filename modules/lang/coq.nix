{ pkgs, ... }:
{
  # plugins.lsp.servers.coq_lsp = {
  #   enable = true;
  #   package = pkgs.coqPackages.coq-lsp;
  # };

  extraPlugins = with pkgs.vimPlugins; [
    coq-lsp-nvim
    Coqtail
  ];

  extraConfigLua = # lua
    ''
      require('coq-lsp').setup({
        filetypes = { "coq" },
        lsp = {
          init_options = {
              show_notices_as_diagnostics = true,
          },
          autostart = true, -- use false if you want to manually launch coq-lsp with :LspStart.
          }
      })
    '';
}
