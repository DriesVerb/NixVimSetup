{
  plugins = {
    treesitter = {
      enable = true;
      settings = { 
        highlight = {
          enable = true;
        };
        indent = {
          enable = true;
        };
        ensure_installed = [
          json
          javascript
          typescript
        ];
      };
    };
  };
}
