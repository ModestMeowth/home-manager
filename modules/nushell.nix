{
  programs.nushell = {
    extraConfig = #nu
    ''
      $env.config.show_banner = false
    '';

    shellAliases = {
      cd = "__zoxide_z";
      ci = "__zoxide_zi";
    };
  };
}
