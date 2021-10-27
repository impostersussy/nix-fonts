{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "helvetica-now-display-ttf";

  owner = "impostersussy";
  repo = "HelveticaNow";
  rev = "e9a76972d1cdf0ad67266bc9443a3e7437c1eead";
  sha256 = "K2leCLC3to8H2qAdYJEhR74HyfFQwf9y5aOHYLRhWvU=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/truetype
    install Display/ttf/*.ttf $out/share/fonts/truetype
  '';

  meta = with lib; {
    description = "Display TTF Helvetica Now font";
    homepage = "https://github.com/impostersussy/HelveticaNow";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

