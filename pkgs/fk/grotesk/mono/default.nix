{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "fk-grotesk-mono";

  owner = "impostersussy";
  repo = "FK";
  rev = "310d7a2b841a502e4b288dcdc3d2f1e67a7a5bbb";
  sha256 = "2Y3VjqZx/qJyU1j/UvBdUPa4QcePDI9CNR0yf4pM6nE=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/truetype
    install Grotesk/FKGrotesk-Mono/*.ttf $out/share/fonts/truetype
  '';

  meta = with lib; {
    description = "FK Grotesk Mono font";
    homepage = "https://github.com/impostersussy/FK";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

