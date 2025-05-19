{ config, lib, pkgs, ... }: {
  programs.fish = {
    plugins = with pkgs.fishPlugins; [
      {
        name = "fzf-fish";
        src = fzf-fish.src;
      }
      {
        name = "puffer";
        src = puffer.src;
      }
      {
        name = "bass";
        src = bass.src;
      }
    ];

    preferAbbrs = true;

    # preferAbbrs doesn't do this for some reason...
    shellAbbrs = {
      cd = "z";
      ci = "zi";
    } // config.home.shellAliases;

    shellInit = # fish
      ''
        if not string match -qi "vscode" $TERM_PROGRAM
          set ZELLIJ_AUTO_ATTACH true
          set ZELLIJ_AUTO_EXIT true
        end
      '';

    interactiveShellInit = lib.mkBefore # fish
      ''
        set -x FISH_PARENT (ps -h -o comm -p (ps -h -o ppid -p $fish_pid | tr -d " "))
        set -g fish_greeting
        fish_vi_key_bindings
        bind yy fish_clipboard_copy
        bind Y fish_clipboard_copy
        bind p fish_clipboard_paste
        set fzf_preview_dir_cmd exa --icons=auto --color=always;
      '';
  };
  home.shellAliases = lib.mkForce { };
}
