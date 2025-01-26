{
  lib,
  stdenv,
  fetchFromGitHub,
}:

stdenv.mkDerivation {
  pname = "yaziPlugins-no-status";
  version = "unstable-2024-12-23";

  src = fetchFromGitHub {
    owner = "yazi-rs";
    repo = "plugins";
    rev = "8ed253716c60f3279518ce34c74ca053530039d8";
    hash = "sha256-xY2yVCLLcXRyFfnmyP6h5Fw+4kwOZhEOCWVZrRwXnTA=";
  };

  buildPhase = ''
    mkdir $out
    cp $src/no-status.yazi/* $out
  '';

  meta = with lib; {
    description = "Remove the status bar.";
    homepage = "https://github.com/yazi-rs/plugins/tree/main/no-status.yazi";
    license = licenses.mit;
    maintainers = [ ];
    platforms = platforms.all;
  };
}
