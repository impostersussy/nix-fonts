{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "fk-roman-text";
  owner = "impostersussy";
  repo = "FK";
  rev = "310d7a2b841a502e4b288dcdc3d2f1e67a7a5bbb";
  sha256 = "3oGmtpQDzSbPHI/0Itzg2spNCDxLYHsmZQ9MC97iaL8=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/truetype
    install Roman/FKRoman-Text/*.ttf $out/share/fonts/truetype
  '';

  meta = with lib; {
    description = "FK Roman Text font";
    homepage = "https://github.com/impostersussy/FK";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

