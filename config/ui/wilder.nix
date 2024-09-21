{pkgs, ...}: {
  plugins.wilder = {
    enable = pkgs.lib.mkDefault true;

    extraConfigLua = builtins.readFile ./wilder.lua;
  };
}
