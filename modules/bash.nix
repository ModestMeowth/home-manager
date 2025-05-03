{config, lib, ...}: {
  programs.bash = {
    shellAliases = config.home.shellAliases;
  };
}
