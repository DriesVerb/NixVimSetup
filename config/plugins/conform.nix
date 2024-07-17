{ pkgs, ... }:
let
  inherit (pkgs)
    stylua
    prettierd
    nixpkgs-fmt;
in
{
  extraPackages = [
    stylua
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
        nix = [ "nixpkgs-fmt" ];
        css = [ "prettierd" ];
        html = [ "prettierd" ];
        javascript = [ "prettierd" ];
        typescript = [ "prettierd" ];
        javascriptreact = [ "prettierd" ];
        typescriptreact = [ "prettierd" ];
      };
    };
  };
}
