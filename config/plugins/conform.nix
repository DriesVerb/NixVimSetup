{ pkgs, ... }:
let
  inherit (pkgs)
    stylua
    prettier
    prettierd
    nixpkgs-fmt;
in
{
  extraPackages = [
    stylua
    prettier
    prettierd
    nixpkgs-fmt
  ];

  plugins = {
    conform-nvim = {
      enable = true;
      formatOnSave = {
        lspFallback = true;
        timeoutMs = 500;
      };
      formattersByFt = {
        lua = [ "stylua" ];
        typescriptreact = [ "prettierd" "prettier" ];
        nix = [ "nixpkgs-fmt" ];
      };
    };
  };
}
