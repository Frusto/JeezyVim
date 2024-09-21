{pkgs, ...}: {
  colorschemes.catppuccin = {
    enable = pkgs.lib.mkDefault true;
  };
}
