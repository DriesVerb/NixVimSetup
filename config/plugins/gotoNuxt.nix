{ pkgs, ... }: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "nuxt-goto.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "rushjs1";
        repo = "nuxt-goto.nvim";
        rev = "9069b07f093734cd0ecc1d8bfa452463603072a1";
        hash = "sha256-cOqeWblQ0iA76pLdLD+O53onIGlWiivZeP2YrtT9N0g=";
      };
    })
  ];
}
