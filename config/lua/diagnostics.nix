{
  config = {
    extraConfigLua = ''
      vim.diagnostic.config({
      		virtual_text = false, -- disable virtual text
      		update_in_insert = true,
      		underline = true,
      		severity_sort = true,
      		float = {
      			focusable = true,
      			style = "minimal",
      			border = "rounded",
      			source = "always",
      			header = "",
      			prefix = "",
      		},
      	}),
    '';
  };
}
