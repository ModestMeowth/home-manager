{ lib, pkgs, ... }: {
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

    shellInit = # fish
      ''
        if not string match -qi "vscode" $TERM_PROGRAM
          set ZELLIJ_AUTO_ATTACH true
          set ZELLIJ_AUTO_EXIT true
        end
      '';

    interactiveShellInit = lib.mkBefore # fish
      ''
        set -g fish_greeting
        fish_vi_key_bindings

        set fzf_preview_dir_cmd eza --always --color=always
        set -x FZF_DEFAULT_OPTS --color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9,fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9,info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6,marker:#ff79c6,spinner:#ffb86c,header:#6272a4 --cycle --layout=reverse --border --height=90% --preview-window=wrap --marker=*
      '';

    shellAbbrs = {
      ssh = "mosh";
      j = "just";

      g = "git";
      ga = "git add";
      clone = "git clone";
      co = "git switch";

      ls = "eza --icons --sort=type";
      ll = "eza -lg --icons --sort=type";
      la = "eza -lag --icons --sort=type";
      tree = "eza --icons --tree";

      cd = "z";
      ci = "zi";
    };
  };
}
