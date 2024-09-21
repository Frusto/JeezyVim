{
  pkgs,
  vim,
  ...
}: {
  programs.neovim = {
    enable = true;

    # Specify the neovim package to be used (nvim)
    package = pkgs.vimPlugins.neovim;

    # Use nvim-web-devicons plugin and wilder.nvim
    plugins = with pkgs.vimPlugins; [
      wilder.nvim
      nvim-web-devicons
    ];

    # Load the Lua configuration from an external file (wilder.lua)
    extraConfigLua = builtins.readFile ./wilder.lua;
  };
}
