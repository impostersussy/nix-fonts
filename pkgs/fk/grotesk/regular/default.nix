{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "fk-grotesk";

  owner = "impostersussy";
  repo = "FK";
  rev = "310d7a2b841a502e4b288dcdc3d2f1e67a7a5bbb";
  sha256 = "OEOmUZ1OckH+mFe+EpzdK7GE7yldlWbYmxrUM38G2oE=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/truetype
    install Grotesk/FKGrotesk/*.ttf $out/share/fonts/truetype
  '';

  meta = with lib; {
    description = "FK Grotesk font";
    homepage = "https://github.com/impostersussy/FK";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

