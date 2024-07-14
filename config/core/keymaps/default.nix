{
  keymaps = [

    ##insert mode
    {
     mode  = "i";
     action = "<ESC>";
     key =  "jk";
    }

    ##normal mode
    {
   	mode = "n";
      	action = ":q<CR>";
	key = "<leader>qf";
    }
    {
   	mode = "n";
      	action = ":qa<CR>";
	key = "<leader>qa";
    }
    {
   	mode = "n";
      	action = ":w<CR>";
	key = "<leader>sf";
    }
    {
   	mode = "n";
      	action = ":wa<CR>";
	key = "<leader>sa";
    }

    #clear highlights
    {
   	mode = "n";
      	action = ":nohl<CR>";
	key = "<leader>nh";
    }

    # toggle line numbers
    {
   	mode = "n";
      	action = ":set rnu!<CR>";
	key = "<leader>ln";
    }

    ## tabs
    # open new tab
    {
   	mode = "n";
      	action = ":tabnew<CR>";
	key = "<leader>to";
    }
    # close current tab
    {
   	mode = "n";
      	action = ":tabclose<CR>";
	key = "<leader>tx";
    }
    # go to next tab
    {
   	mode = "n";
      	action = ":tabn<CR>";
	key = "<leader>tn";
    }
    # go to previous tab
    {
   	mode = "n";
      	action = ":tabp<CR>";
	key = "<leader>tp";
    }

    ##visual mode
    #move code
    {
   	mode = "v";
      	action = ":m '>+1<CR>gv=gv";
	key = "J";
    }
    {
   	mode = "v";
      	action = ":m '>-2<CR>gv=gv";
	key = "K";
    }

    ## nvim-tree
    # toggle file explorer
    {
      action = "<cmd>NvimTreeToggle<CR>";
      key = "<leader>ee";
    }
    # toggle file in explorer
    {
      action = "<cmd>NvimTreeFindFile<CR>";
      key = "<leader>ef";
    }
    # toggle file explorer on current file
    {
      action = "<cmd>NvimTreeFindFileToggle<CR>";
      key = "<leader>et";
    }
    # collape file explorer 
    {
      action = "<cmd>NvimTreeCollapse<CR>";
      key = "<leader>ec";
    }
    # refresh file explorer
    {
      action = "<cmd>NvimTreeRefresh<CR>";
      key = "<leader>er";
    }

    ## telescope
    # find files
    {
   	  mode = "n";
      action = "<cmd>Telescope find_files<CR>";
	    key = "<leader>ff";
    }
    # find recent files
    {
   	  mode = "n";
      action = "<cmd>Telescope oldfiles<CR>";
	    key = "<leader>fr";
    }
    # find string in cwd 
    {
   	  mode = "n";
      action = "<cmd>Telescope live_grep<CR>";
	    key = "<leader>fs";
    }
    # find string under cursor 
    {
   	  mode = "n";
      action = "<cmd>Telescope grep_string<CR>";
	    key = "<leader>fc";
    }
    # find todos
    {
   	  mode = "n";
      action = "<cmd>TodoTelescope<CR>";
	    key = "<leader>fc";
    }

  ];
}
