{ config, lib, ... }:
let
  cfg = config.shell.aliases;
  preferAbbrs = config.programs.fish.preferAbbrs;
in
{
  options.shell.aliases = lib.mkOption {
    type = with lib.types; attrsOf str;
    default = { };
  };

  config = {
    programs.fish.shellAbbrs = lib.mkIf preferAbbrs cfg;
    programs.fish.shellAliases = lib.mkIf (!preferAbbrs) cfg;
    programs.bash.shellAliases = cfg;
    programs.zsh.shellAliases = cfg;
    programs.nushell.shellAliases = cfg;
  };
}
