{
  imports = [
    ./settings.nix
    ./style.nix
  ];

  programs.btop = {
    enable = true;
  };
}
