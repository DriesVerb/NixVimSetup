{
  config = {
    extraConfigLua = ''
      local vueGotoDefenition = require("vue-goto-definition")
      vueGotoDefenition.setup({})
    '';
  };
}
