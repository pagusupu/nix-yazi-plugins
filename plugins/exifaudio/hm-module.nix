{
  config = _: _: {
    programs.yazi.settings.plugin.prepend_previewers = [
      {
        mime = "audio/*";
        run = "exifaudio";
      }
    ];
  };
}
