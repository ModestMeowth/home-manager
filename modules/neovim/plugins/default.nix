{
  imports = [
    ./oil.nix
    ./snacks.nix
    ./treesitter.nix
    ./treesitter-textobjects.nix
  ];

  programs.nixvim.plugins = {
    auto-save.enable = true;
    otter.enable = true;
    persistence.enable = true;
    render-markdown.enable = true;
    todo-comments.enable = true;
    web-devicons.enable = true;
  };
}
