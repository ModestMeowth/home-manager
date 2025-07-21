{config, ...}: let
  theme = config.lib.stylix.colors;
in {
  programs.wofi.style = # CSS
    ''
      window {
        margin: 0px;
        border: 1px solid #${theme.base0F};
        background-color: #${theme.base00};
      }

      #input, #text {
        margin: 5px;
        border: none;
        color: #${theme.base05};
      }

      #input {
        background-color: #${theme.base00};
      }

      #inner-box, #outer-box {
        margin: 5px;
        border: none;
        background-color: #${theme.base00};
      }

      #scroll {
          margin: 0px;
      }

      #entry.activatable #text {
        color: #${theme.base00};
      }

      #entry > * {
        color: #${theme.base05};
      }

      #entry:selected {
        background-color: #${theme.base02};
      }

      #entry:selected #text {
        font-weight: bold;
      }
    '';
}
