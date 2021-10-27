{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "fk-display";

  owner = "impostersussy";
  repo = "FK";
  rev = "310d7a2b841a502e4b288dcdc3d2f1e67a7a5bbb";
  sha256 = "Fi/zBIVsD0xeD23Ed3LhmKdpeXQOSGGoLohXSE9sS/4=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/truetype
    install Display/*.ttf $out/share/fonts/truetype
  '';

  meta = with lib; {
    description = "FK Display font";
    homepage = "https://github.com/impostersussy/FK";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

