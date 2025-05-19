{ config, lib, ... }: {
  programs.bash = {
    shellAliases = config.home.shellAliases;

    initExtra = lib.mkBefore # bash
      ''
        PARENT_PROCESS="$(ps -h -o comm -p $PPID)"
        export PARENT_PROCESS
      '';
  };
}
