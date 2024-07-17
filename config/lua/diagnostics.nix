{
  config = {
    extraConfigLua = ''
          -- Change the Diagnostic symbols in the sign column (gutter)
      		local signs = { Error = "󱚢 ", Warn = "󱚠 ", Hint = "󱙺 ", Info = "󱚦 " }
      		for type, icon in pairs(signs) do
      			local hl = "DiagnosticSign" .. type
      			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      		end
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
            	})
    '';
  };
}
