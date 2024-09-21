{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    plenary-nvim
    vim-repeat
    lspkind-nvim
    zen-mode-nvim
    twilight-nvim
    vim-just

    (pkgs.vimUtils.buildVimPlugin {
      name = "vim-better-sml";
      src = pkgs.fetchFromGitHub {
        owner = "jez";
        repo = "vim-better-sml";
        rev = "a343ee8bed94c2bb35d829f18803bffde8258369";
        hash = "sha256-LxCo7Q/SbCc+Xib8W5vunOMOoHo1OMrr5crQh81fRss=";
      };
    })

    {
      plugin = tint-nvim;
      config = "lua require('tint').setup()";
    }
    {
      plugin = nvim-surround;
      config = "lua require('nvim-surround').setup({move_cursor=false})";
    }
    {
      plugin = treesj;
      config = "lua require('treesj').setup({use_default_keymaps=false})";
    }
    {
      plugin = highlight-undo-nvim;
      config = "lua require('highlight-undo').setup()";
    }
  ];
}
