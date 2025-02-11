{
  lib,
  stdenv,
  fetchFromGitHub,
}:
stdenv.mkDerivation {
  pname = "yaziPlugins-full-border";
  version = "unstable-2024-12-14";

  src = fetchFromGitHub {
    owner = "yazi-rs";
    repo = "plugins";
    rev = "8945e543ebbaa25de155b7101a917eba007252f2";
    hash = "sha256-ko/vvItKtQSz5rbP3TMb4R1bywW2q8hj7E/A++vhVqQ=";
  };

  buildPhase = ''
    mkdir $out
    cp $src/full-border.yazi/* $out
  '';

  meta = with lib; {
    description = "Add a full border to Yazi to make it look fancier.";
    homepage = "https://github.com/yazi-rs/plugins/tree/main/full-border.yazi";
    license = licenses.mit;
    maintainers = [];
    platforms = platforms.all;
  };
}
