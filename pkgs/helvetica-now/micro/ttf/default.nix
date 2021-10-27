{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "helvetica-now-micro-ttf";

  owner = "impostersussy";
  repo = "HelveticaNow";
  rev = "e9a76972d1cdf0ad67266bc9443a3e7437c1eead";
  sha256 = "8xE42IUZ9Kdwc3Kr1aQbxMmt9ROUj9alfgTFCJHMEQ4=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/truetype
    install Micro/ttf/*.ttf $out/share/fonts/truetype
  '';

  meta = with lib; {
    description = "Micro OTF Helvetica Now font";
    homepage = "https://github.com/impostersussy/HelveticaNow";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

