{ pkgs, ... }: 
let
  inherit (pkgs)
    ripgrep
    nodePackages;
in
{
  extraPackages = [
    ripgrep
    nodePackages.volar
  ];
}
