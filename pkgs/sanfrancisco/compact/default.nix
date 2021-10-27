{ lib, fetchFromGitHub }:

let version = "1.0.0";
in
fetchFromGitHub rec {
  name = "sanfrancisco-compact";

  owner = "impostersussy";
  repo = "SanFrancisco";
  rev = "0286505cd860e44d834a7999890c27919de433fa";
  sha256 = "k77Ez00G94kMLPpGqIv/yglJjYhe/T0nl+XI1pDwcGE=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/opentype
    install Compact/*/*.otf $out/share/fonts/opentype
  '';

  meta = with lib; {
    description = "Compact San Francisco fonts";
    homepage = "https://github.com/impostersussy/SanFrancisco";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

