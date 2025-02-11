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
    rev = "8945e543ebbaa25de155b7101a917eba007252f2";
    hash = "sha256-ko/vvItKtQSz5rbP3TMb4R1bywW2q8hj7E/A++vhVqQ=";
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
