{
  config = _: _: {
    programs.yazi.settings.plugin.prepend_previewers = [
      {
        mime = "application/bittorrent";
        run = "torrent-preview";
      }
    ];
  };
}
