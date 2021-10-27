{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "fk-roman-display";
  owner = "impostersussy";
  repo = "FK";
  rev = "310d7a2b841a502e4b288dcdc3d2f1e67a7a5bbb";
  sha256 = "HTPJYByEpWsXXM2VJVhLZricqIHn1qY2Ku9Mz7hhg2o=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/truetype
    install Roman/FKRoman-Display/*.ttf $out/share/fonts/truetype
  '';

  meta = with lib; {
    description = "FK Roman Display font";
    homepage = "https://github.com/impostersussy/FK";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

