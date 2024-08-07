{
  plugins = {
    packer = {
      enable = true;
      plugins = [
        {
          name = "rushjs1/nuxt-goto.nvim";
        }
      ];
    };
  };
}
