{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "helvetica-now-text-otf";

  owner = "impostersussy";
  repo = "HelveticaNow";
  rev = "e9a76972d1cdf0ad67266bc9443a3e7437c1eead";
  sha256 = "ziQMZQNRAZJceoWoX4wGRLbwaUtrQ7Wa0y77JUFwLBc=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/opentype
    install Text/otf/*.otf $out/share/fonts/opentype
  '';

  meta = with lib; {
    description = "Text TTF Helvetica Now font";
    homepage = "https://github.com/impostersussy/HelveticaNow";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

