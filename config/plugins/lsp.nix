{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        html.enable = true;
        nixd.enable = true;
        cssls.enable = true;
        volar.enable = true;
        lua-sl.enable = true;
        jsonls.enable = true;
      };
    };
  };
}
