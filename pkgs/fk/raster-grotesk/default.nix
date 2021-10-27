{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "fk-raster-grotesk";

  owner = "impostersussy";
  repo = "FK";
  rev = "310d7a2b841a502e4b288dcdc3d2f1e67a7a5bbb";
  sha256 = "7g5B4szqJifeVWJSGUqtK6RYmcLmMKhlFbTaNmKrhRg=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/truetype
    install Raster/*/*.ttf $out/share/fonts/truetype
  '';

  meta = with lib; {
    description = "FK Raster Grotesk font";
    homepage = "https://github.com/impostersussy/FK";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

