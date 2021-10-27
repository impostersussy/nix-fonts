{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "klavika";

  owner = "impostersussy";
  repo = "Klavika";
  rev = "d080031d4db7f6c11a1d45b6cd60fbcdeec7b3ee";
  sha256 = "BrYhbpLIE2cxmiF532joiZo0A18sdQomXDwqHBmgPJc=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/opentype
    install *.otf $out/share/fonts/opentype
  '';

  meta = with lib; {
    description = "Klavika font";
    homepage = "https://github.com/impostersussy/Klavika";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

