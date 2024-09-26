{pkgs, ...}: {
  plugins.wilder = {
    enable = pkgs.lib.mkDefault true;
    modes = [
      ":"
      "/"
      "?"
    ];
  };
  extraConfigLua = builtins.readFile ./wilder.lua;
}
