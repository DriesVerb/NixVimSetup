{
  # vim.opt
  globalOpts = {
    #line numbers
    relativenumber = true;
    number = true;
    #space of the numbers
    numberwidth = 5;
    ## tabs
    # 2 spaces for tabs
    tabstop = 2;
    # 2 spaces for indent width
    shiftwidth = 2;
    # expand tab to spaces
    expandtab = true;
    #copy indent form current line
    autoindent = true;

    # line wrapping
    wrap = true;

    ## search
    # ignore case
    ignorecase = true;
    # include mixed case in search
    smartcase = true;
    
    # takes gui colors
    termguicolors = true;
    # prefers dark in schemes
    background = "dark";

    # allow backspace to indent
    backspace = "indent,eol,start";

    ## split windows
    splitright = true;
    splitbelow = true;

    # clipboard
    clipboard = "unnamed";

    # swapping files and undos
    swapfile = false;
    backup = false;
    undofile = true;
  };

  #vim.g
  globals = {
    mapleader = " ";
    loaded_netrw = 1;
    loaded_netrwPlugin = 1;
  };
}
