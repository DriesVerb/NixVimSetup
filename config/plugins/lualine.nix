{
  config = {
      extraConfigLuaPre = ''
        
        		local symbolset = {
			"",
			"󰹼",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"󰱲",
			"󰈷",
			"󰉊",
			"󱜜",
			"󱨛",
			"󰊠",
			"󱍢",
			"󰩐",
			"󰩘",
			"󰼁",
			"󰧻",
			"󰧿",
			"󱠦",
			"󱅻",
			"󱇽",
			"󰟟",
			"󱙰",
			"󰸌",
			"󱅗",
			"󱝅",
			"󱙹",
			"󰨈",
			"󱕄",
			"󱚥",
			"󱄔",
			"󰦥",
			"󰟶",
			"󰿧",
			"󱗂",
			"󰘉",
			"󰑣",
			"󱄾",
			"󰹅",
		}

		math.randomseed(os.time())
		local random_elem = symbolset[math.random(1, #symbolset)]

-- stylua: ignore
local symbols = {
  unix = random_elem, -- e712
  dos = '', -- e70f
  mac = '', -- e711
}

		lualine.setup({
			options = {
				symbols = symbols,
			},
		})
      '';
  plugins = {
    lualine = {
      enable = true;
    };
  };
  };
}
