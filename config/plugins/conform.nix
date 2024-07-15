{
  plugins = {
    conform-nvim = {
      enable = true;
        formattersByFt = {
          lua = [ "stylua" ];
          typescriptreact = [ "prettierd" "prettier" ];
        };
      };
   };
}
