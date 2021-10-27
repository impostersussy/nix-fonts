{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "helvetica-now-display-otf";

  owner = "impostersussy";
  repo = "HelveticaNow";
  rev = "e9a76972d1cdf0ad67266bc9443a3e7437c1eead";
  sha256 = "YR1n9EA5eS1GmR/ZvV+oYv9swz5uDPF1sIBfJgb+YFY=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/opentype
    install Display/otf/*.otf $out/share/fonts/opentype
  '';

  meta = with lib; {
    description = "Display OTF Helvetica Now font";
    homepage = "https://github.com/impostersussy/HelveticaNow";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

