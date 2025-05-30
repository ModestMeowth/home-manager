{
  programs.nixvim = {
    diagnostic.settings.virtual_text = false;

    plugins.tiny-inline-diagnostic.settings = {
      multilines.enabled = true;
      options.use_icons_from_diagnostic = true;
    };
  };
}
