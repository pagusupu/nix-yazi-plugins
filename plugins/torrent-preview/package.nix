{
  lib,
  stdenv,
  fetchFromGitHub,
}:

stdenv.mkDerivation {
  pname = "yaziPlugin-torrent-preview";
  version = "unstable-2024-12-24";

  src = fetchFromGitHub {
    owner = "kirasok";
    repo = "torrent-preview.yazi";
    rev = "c9e67df81cb62759bd84a2fad5a0d9b6713bd595";
    hash = "sha256-GKUQaZtywigV6NAd6pjYRYl4UsUKeJHaBTLpMG7xxME=";
  };

  buildPhase = ''
    mkdir $out
    cp $src/* $out
  '';

  meta = {
    description = "Yazi plugin to preview bittorrent files";
    homepage = "https://github.com/kirasok/torrent-preview.yazi";
    license = lib.licenses.agpl3Only;
    maintainers = [ ];
    platforms = lib.platforms.all;
  };
}
