{pkgs, ...}: {
  programs.tmux = {
    enable = true;

    baseIndex = 1;
    clock24 = true;
    mouse = true;

    plugins = with pkgs.tmuxPlugins; [
      sensible
      tmux-fzf
      yank
      {
        plugin = dracula;
        extraConfig = ''
          set -g @dracula-show-powerline true
          set -g @dracula-plugins "git battery time"
          set -g @dracula-refresh-rate 10
        '';
      }
    ];

    extraConfig = ''
      set -gq allow-passthrough on
      set -g renumber-windows on

      bind-key "%" split-window -h -c "#{pane_current_path}"
      bind-key "\"" split-window -v -c "#{pane_current_path}"
      bind-key "|" split-window -h -c "#{pane_current_path}"
      bind-key "\\" split-window -fh -c "#{pane_current_path}"
      bind-key "-" split-window -v -c "#{pane_current_path}"
      bind-key "_" split-window -fv -c "#{pane_current_path}"
    '';
  };
}
