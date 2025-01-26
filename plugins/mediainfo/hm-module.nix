{
  config = _: _: {
    programs.yazi.settings.plugin.prepend_previewers = [
      {
        mime = "{image,audio,video}/*";
        run = "mediainfo";
      }
      {
        mime = "application/subrip";
        run = "mediainfo";
      }
    ];
  };
}
