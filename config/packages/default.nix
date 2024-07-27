{ pkgs, ... }: {
  extraPackages = with pkgs; [
    ripgrep
    nodePackages.typescript
    nodePackages.typescript-language-server
  ];
}
