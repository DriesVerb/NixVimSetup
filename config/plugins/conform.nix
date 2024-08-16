{ pkgs, ... }:
let
  inherit (pkgs)
    stylua
    nodePackages
    prettierd
    nixpkgs-fmt;
in
{
  extraPackages = [
    stylua
    nodePackages.prettier
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
        vue = [ "prettierd" ];
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
