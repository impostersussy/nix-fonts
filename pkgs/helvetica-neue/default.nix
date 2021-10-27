{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "helvetica-neue";

  owner = "impostersussy";
  repo = "HelveticaNeue";
  rev = "dc323daf3650bee5665b40dc6b7345831df83829";
  sha256 = "gxI7BW0QPCVgDLWbdEzOHlIoOepE0eNJx/8VGYUoEcc=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/opentype
    install *.otf $out/share/fonts/opentype
  '';

  meta = with lib; {
    description = "Helvetica Neue font";
    homepage = "https://github.com/impostersussy/HelveticaNeue";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

