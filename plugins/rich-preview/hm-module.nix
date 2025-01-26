{
  config =
    _:
    { lib, config, ... }:
    {
      programs.yazi.settings.plugin.prepend_previewers =
        let
          preview = type: {
            name = "*.${type}";
            run = "rich-preview";
          };
        in
        [
          (preview "csv")
          (preview "md")
          (preview "rst")
          (preview "ipynb")
          (preview "json")
        ];
    };
}
