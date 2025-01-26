{
  lib,
  stdenv,
  fetchFromGitHub,
}:
stdenv.mkDerivation {
  pname = "yaziPlugins-rich-preview";
  version = "unstable-2024-11-23";

  src = fetchFromGitHub {
    owner = "AnirudhG07";
    repo = "rich-preview.yazi";
    rev = "6752254b3e1c6f947977776bc1a515395ec73eb9";
    hash = "sha256-TwL0gIcDhp0hMnC4dPqaVWIXhghy977DmZ+yPoF/N98=";
  };

  buildPhase = ''
    mkdir -p $out
    cp -r $src/* $out/
  '';

  meta = with lib; {
    description = "Rich preview plugin for yazi file manager";
    homepage = "https://github.com/AnirudhG07/rich-preview.yazi";
    license = licenses.mit;
    maintainers = [ ];
    platforms = platforms.all;
  };
}
