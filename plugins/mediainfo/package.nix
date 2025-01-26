{
  lib,
  stdenv,
  fetchFromGitHub,
}:

stdenv.mkDerivation {
  pname = "yaziPlugins-mediainfo";
  version = "unstable-2024-11-29";

  src = fetchFromGitHub {
    owner = "boydaihungst";
    repo = "mediainfo.yazi";
    rev = "ddfd5ecdafc75ba9a9c9c9ba29203666c4e2adc2";
    hash = "sha256-mWfCot+Jn820HJZ/YEJZY1FONNY5eBCooArjKAfmoj4=";
  };

  buildPhase = ''
    mkdir $out
    cp $src/* $out
  '';

  meta = {
    description = "Yazi plugin for previewing media files";
    homepage = "https://github.com/boydaihungst/mediainfo.yazi";
    license = lib.licenses.mit;
    maintainers = [ ];
    platforms = lib.platforms.all;
  };
}
