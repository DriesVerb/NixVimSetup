{ pkgs, mylib, ... }: {
  extraPackages = with pkgs; [
    ripgrep
  ];
  extraNodePackages = with mylib: [
    nodePackages.volar
  ];
}
