{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "fk-screamer";
  owner = "impostersussy";
  repo = "FK";
  rev = "310d7a2b841a502e4b288dcdc3d2f1e67a7a5bbb";
  sha256 = "AUK4n7zeKSqiNpoxizSfiybsg9cgfoSD9Tu+R8OMdS0=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/truetype
    install Screamer/*.ttf $out/share/fonts/truetype
  '';

  meta = with lib; {
    description = "FK Screamer font";
    homepage = "https://github.com/impostersussy/FK";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

