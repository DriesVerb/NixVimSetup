{ pkgs, ... }: {
  extraPackages = with pkgs; [
    ripgrep
    nodePackages.volar
  ];
}
