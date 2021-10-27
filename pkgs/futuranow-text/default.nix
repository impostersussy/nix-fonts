{ lib, fetchFromGitHub }:

let version = "0.829";
in
fetchFromGitHub rec {
  name = "futuranow-text";

  owner = "impostersussy";
  repo = "FuturaNow";
  rev = "0ef3c5e1b70bbe672f146a02b98bf0e1e3b19c54";
  sha256 = "8c3AMZuNnvkQww+uQs07L1XsVQBu9fWEnSBHKeM+Pv0=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/truetype
    install *.ttf $out/share/fonts/truetype
  '';

  meta = with lib; {
    description = "Futura Now Text font";
    homepage = "https://github.com/impostersussy/FuturaNow";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

