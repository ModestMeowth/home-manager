{pkgs, ...}: {
  programs.nushell = {
    package = pkgs.unstable.nushell;
    extraEnv = # nu
    ''
      $env.config.buffer_editor = "nvim"
      $env.config.show_banner = false
      $env.config.use_kitty_protocol = true
      $env.ZELLIJ_AUTO_ATTACH = true
      $env.ZELLIJ_AUTO_EXIT = true
    '';
    extraConfig = # nu
    ''
      source /home/mm/.cache/zellij/zellij.nu
    '';

    shellAliases = {
      cd = "__zoxide_z";
      ci = "__zoxide_zi";
      j = "just";
      # Mosh doesn't play nice with nushell
#      ssh = ''mosh --server="LANG=C.UTF-8 mosh-server"'';
      ssh = "mosh";
    };
  };
}
