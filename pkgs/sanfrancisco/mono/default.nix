{ lib, fetchFromGitHub }:

let version = "1.0.0";
in
fetchFromGitHub rec {
  name = "sanfrancisco-mono";

  owner = "impostersussy";
  repo = "SanFrancisco";
  rev = "0286505cd860e44d834a7999890c27919de433fa";
  sha256 = "CoGD589wzzXv7vCcvD7M0syxhnUf3m3oFBkPORA7VMU=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/opentype
    install Mono/*.otf $out/share/fonts/opentype
  '';

  meta = with lib; {
    description = "Mono San Francisco fonts";
    homepage = "https://github.com/impostersussy/SanFrancisco";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

