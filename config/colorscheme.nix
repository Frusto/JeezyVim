{pkgs, ...}: {
  colorschemes.catppuccin = {
    enable = pkgs.lib.mkDefault true;
    settings.transparent_background = true;
  };
}
