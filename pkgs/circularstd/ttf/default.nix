{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "circularstd-ttf";

  owner = "impostersussy";
  repo = "CircularStd";
  rev = "bdfe68263fa2f809780587ca50a9fa56fe09b063";
  sha256 = "Sgpcg7IsRZTKkKhLb7PcIlPNSuPMlq9DLzMiDN7/NPg=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/truetype
    install *.ttf $out/share/fonts/truetype
  '';

  meta = with lib; {
    description = "Circular TTF font";
    homepage = "https://github.com/impostersussy/HelveticaNow";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

