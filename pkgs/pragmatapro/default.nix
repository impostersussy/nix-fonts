{ lib, fetchFromGitHub }:

let version = "0.829";
in
fetchFromGitHub rec {
  name = "pragmatapro";

  owner = "impostersussy";
  repo = "PragmataPro";
  rev = "e3ec0aa7a653bdc6d679b843a6a6b95c2e3a8d92";
  sha256 = "+bGH7zccvzDUPJsa7eyoP6vYlWfdUADkVCixFZt9tvo=";

  postFetch = ''
    tar xzf $downloadedFile --strip=1
    mkdir -p $out/share/fonts/truetype
    install *.ttf $out/share/fonts/truetype
  '';

  meta = with lib; {
    description = "PragmataPro font";
    homepage = "https://github.com/impostersussy/PragmataPro";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ impostersussy ];
  };
}

