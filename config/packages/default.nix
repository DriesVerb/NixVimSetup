{ pkgs, ... }: 
let
  inherit (pkgs)
    nodePackages;
in
{
  extraPackages = with pkgs; [
    ripgrep
    nodePackages.volar
  ];
}
