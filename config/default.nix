{
  imports = [
    # env packages
    ./packages/default.nix
    # core options / settings
    ./core/themes/default.nix
    ./core/keymaps/default.nix
    ./core/options/default.nix
    # plugins ecosystem
    ./plugins/default.nix
    # extra lua configs
    ./lua/default.nix
  ];
}
