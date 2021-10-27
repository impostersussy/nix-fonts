{ lib, fetchFromGitHub }:

let version = "1.0.0";
in
fetchFromGitHub rec {
  name = "sanfrancisco-pro";

  owner = "impostersussy";
  repo = "SanFrancisco";
  rev = "0286505cd860e44d834a7999890c27919de433fa";
  sha256 = "2wqrc7K6p4sHYz3KERPxdcmJHCvu4imcBlM+kmhRgGs=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/opentype
    install Pro/*/*.otf $out/share/fonts/opentype
  '';

  meta = with lib; {
    description = "Pro San Francisco fonts";
    homepage = "https://github.com/impostersussy/SanFrancisco";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

