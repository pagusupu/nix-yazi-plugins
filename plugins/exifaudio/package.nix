{
  lib,
  stdenv,
  fetchFromGitHub,
}:

stdenv.mkDerivation {
  pname = "yaziPlugins-exifaudio";
  version = "unstable-2024-11-23";

  src = fetchFromGitHub {
    owner = "Sonico98";
    repo = "exifaudio.yazi";
    rev = "d7946141c87a23dcc6fb3b2730a287faf3154593";
    hash = "sha256-nXBxPG6PVi5vstvVMn8dtnelfCa329CTIOCdXruOxT4=";
  };
  buildPhase = ''
    mkdir $out
    cp $src/* $out
  '';

  meta = with lib; {
    description = "Preview audio files metadata on yazi ";
    homepage = "Preview audio files metadata on yazi ";
    license = licenses.mit;
    maintainers = [ ];
    platforms = platforms.all;
  };
}
