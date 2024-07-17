{
  config = { pkgs, ... }: {
    extraPackages = with pkgs; [
      ripgrep
    ];
  };
}
