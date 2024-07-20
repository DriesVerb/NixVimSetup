{
  plugins = {
    lsp = {
      enable = true;
      keymaps = {
        silent = true;

        diagnostic = {
          "<leader>ge" = "open_float";
          "[d" = "goto_prev";
          "]d" = "goto_next";
        };

        lspBuf = {
          "<leader>gd" = "definition";
          "<leader>gt" = "type_definition";
          "<leader>K" = "hover";
          "<leader>ca" = "code_action";
          "<leader>rn" = "rename";
        };
      };
      servers = {
        tsserver = true;
        volar = {
          enable = true;
          filetypes = [ "typescript" "vue" ];
        };
        html.enable = true;
        nixd.enable = true;
        cssls.enable = true;
        lua-ls.enable = true;
        jsonls.enable = true;
        emmet-ls.enable = true;
        tailwindcss.enable = true;
      };
    };
  };
}
