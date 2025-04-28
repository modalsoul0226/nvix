{ ... }:
{
  colorschemes.catppuccin = {
    enable = true;
    settings = {
    color_overrides = {
        mocha = {
          base = "#1e1e2f";
        };
      };
      disable_underline = false;
      flavour = "latte";
      integrations = {
        cmp = true;
        gitsigns = true;
        mini = {
          enabled = true;
          indentscope_color = "";
        };
        notify = false;
        nvimtree = true;
        treesitter = true;
      };
      styles = {
        booleans = [
          "bold"
          "italic"
        ];
        conditionals = [
          "bold"
        ];
      };
      term_colors = true;
    };
  };
}
