{ pkgs, ... }: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "nuxt-goto.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "rushjs1";
        repo = "nuxt-goto.nvim";
        # rev = "<commit hash>";
        # hash = "<nix NAR hash>";
      };
    })
  ];
}
