{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "stimula";

  owner = "impostersussy";
  repo = "Stimula";
  rev = "fff6a87a799ec00d3dfba5d2100946fa48c2245e";
  sha256 = "0HYr3rkwoGf9XRVYJv7aIso1o9vZH6Y04LySJPPSVXs=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/truetype
    install *.ttf $out/share/fonts/truetype
  '';

  meta = with lib; {
    description = "Stimula font";
    homepage = "https://github.com/impostersussy/Stimula";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

