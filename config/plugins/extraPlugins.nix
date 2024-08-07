{ pkgs, ... }: {
  extraPlugins = with pkgs; [
    vue-goto-definition
  ];
}
