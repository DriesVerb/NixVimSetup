{ pkgs, ... }: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "vue-goto-definition.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "catgoose";
        repo = "vue-goto-definition.nvim";
        rev = "cefd5147d5892b75e3c017bcfb46d2a776275088";
        hash = "";
      };
    })
  ];
}
