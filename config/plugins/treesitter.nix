{
  plugins = {
    treesitter = {
      enable = true;
      folding = false;
      settings = { 
        highlight = {
          enable = true;
        };
        indent = {
          enable = true;
        };
        autotag = {
          enable = true;
        };
        ensure_installed = [
          "json"
          "javascript"
          "typescript"
          "tsx"
          "vue"
          "yaml"
          "html"
          "css"
          "lua"
        ];
      };
    };
  };
}
