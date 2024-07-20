{ pkgs, ... }: {
  extraPackages = with pkgs; [
    ripgrep
    nodePackages.typescript-language-server
  ];
}
