{
  plugins = {
    telescope = {
      enable = true;
      extensions = {
        file-browser = {
          enable = true;
        };
        fzf-native = {
          enable = true;
        };
      };
      settings = {
        mappings = {
          i = {
            "<C-j>" = {
          __raw = "require('telescope.actions').move_selection_next";
        };
        "<C-k>" = {
          __raw = "require('telescope.actions').move_selection_previous";
        };
          };
        };
      };
    };
  };
}
