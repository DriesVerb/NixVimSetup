{
  config = {
    extraConfigLuaPre = ''
                            local lualine = require("lualine")
                            local symbolset = {
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

            local symbols = {
              unix = random_elem, -- e712
              dos = '', -- e70f
              mac = random_elem, -- e711
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
