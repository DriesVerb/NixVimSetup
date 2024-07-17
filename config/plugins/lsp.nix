{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        html.enable = true;
        nixd.enable = true;
        cssls.enable = true;
        volar.enable = true;
        lua-ls.enable = true;
        jsonls.enable = true;
      };
    };
  };
}
