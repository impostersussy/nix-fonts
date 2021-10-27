{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "helvetica-now-text-ttf";

  owner = "impostersussy";
  repo = "HelveticaNow";
  rev = "e9a76972d1cdf0ad67266bc9443a3e7437c1eead";
  sha256 = "qWr03Bkr0sVNk/CK/Y0r4KaJ6cgTtKjijUmwOAgmluk=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/truetype
    install Text/ttf/*.ttf $out/share/fonts/truetype
  '';

  meta = with lib; {
    description = "Text TTF Helvetica Now font";
    homepage = "https://github.com/impostersussy/HelveticaNow";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

