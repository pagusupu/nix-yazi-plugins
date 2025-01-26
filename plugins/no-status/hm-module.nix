{
  config = _: _: {
    programs.yazi.initLua = ''
      require("no-status"):setup()
    '';
  };
}
