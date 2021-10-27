{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "helvetica-now-micro-otf";

  owner = "impostersussy";
  repo = "HelveticaNow";
  rev = "e9a76972d1cdf0ad67266bc9443a3e7437c1eead";
  sha256 = "e/zV4RwEsmVSP609yfeV+QkM7sCpqhvVljL7e1JDetQ=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/opentype
    install Micro/otf/*.otf $out/share/fonts/opentype
  '';

  meta = with lib; {
    description = "Micro TTF Helvetica Now font";
    homepage = "https://github.com/impostersussy/HelveticaNow";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

