{ lib, fetchFromGitHub }:

fetchFromGitHub rec {
  name = "newyork";

  owner = "impostersussy";
  repo = "NewYork";
  rev = "e03da5ba7a1bd64fb18cfe39bc1b1ad5677cb691";
  sha256 = "7L0oWYheIYIn0uwsOcHcMsH5c+blkGyhWjlmyCOC7IU=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/opentype
    install */*.otf $out/share/fonts/opentype
  '';

  meta = with lib; {
    description = "Apple's New York font";
    homepage = "https://github.com/impostersussy/NewYork";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

