{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "circularstd-otf";

  owner = "impostersussy";
  repo = "CircularStd";
  rev = "bdfe68263fa2f809780587ca50a9fa56fe09b063";
  sha256 = "RIcUNQo/7YFhWSVOGxTLLGIBAyPXzJBz7CBKtoYkpi4=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/opentype
    install *.otf $out/share/fonts/opentype
  '';

  meta = with lib; {
    description = "Circular OTF font";
    homepage = "https://github.com/impostersussy/CircularStd";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

