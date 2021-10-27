{
  description = "nix-fonts overlay";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-compat = { url = "github:edolstra/flake-compat"; flake = false; };
    flake-compat-ci.url = "github:hercules-ci/flake-compat-ci";
  };
  outputs = args@{ self, flake-utils, nixpkgs, ... }:
    {
      ciNix = args.flake-compat-ci.lib.recurseIntoFlake self;

      overlay = final: prev: {
        inherit (self.packages.${final.system})
          # Fonts
          helvetica-neue
          helvetica-now-display-otf
          helvetica-now-display-ttf
          helvetica-now-micro-otf
          helvetica-now-micro-ttf
          sanfrancisco-compact
          sanfrancisco-mono
          sanfrancisco-pro
          newyork
          stimula
          circularstd-otf
          circularstd-ttf
          futuranow-text
          klavika
          pragmatapro
          fk-display
          fk-grotesk
          fk-grotesk-semimono
          fk-grotesk-mono
          fk-raster-grotesk
          fk-roman-display
          fk-roman-text
          fk-screamer;
      };
    } // flake-utils.lib.eachSystem [ "x86_64-linux" "aarch64-linux" ] (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
        version = "999-unstable";
      in
      {
        defaultPackage = self.packages.${system}.helvetica-neue;
        packages = rec {
          helvetica-neue = pkgs.callPackage ./pkgs/helvetica-neue { };
          helvetica-now-display-otf = pkgs.callPackage ./pkgs/helvetica-now/display/otf { };
          helvetica-now-display-ttf = pkgs.callPackage ./pkgs/helvetica-now/display/ttf { };
          helvetica-now-micro-otf = pkgs.callPackage ./pkgs/helvetica-now/micro/otf { };
          helvetica-now-micro-ttf = pkgs.callPackage ./pkgs/helvetica-now/micro/ttf { };
          helvetica-now-text-otf = pkgs.callPackage ./pkgs/helvetica-now/text/otf { };
          helvetica-now-text-ttf = pkgs.callPackage ./pkgs/helvetica-now/text/ttf { };
          pragmatapro = pkgs.callPackage ./pkgs/pragmatapro { };
          sanfrancisco-compact = pkgs.callPackage ./pkgs/sanfrancisco/compact { };
          sanfrancisco-pro = pkgs.callPackage ./pkgs/sanfrancisco/pro { };
          sanfrancisco-mono = pkgs.callPackage ./pkgs/sanfrancisco/mono { };
          newyork = pkgs.callPackage ./pkgs/newyork { };
          stimula = pkgs.callPackage ./pkgs/stimula { };
          futuranow-text = pkgs.callPackage ./pkgs/futuranow-text { };
          circularstd-otf = pkgs.callPackage ./pkgs/circularstd/otf { };
          circularstd-ttf = pkgs.callPackage ./pkgs/circularstd/ttf { };
          klavika = pkgs.callPackage ./pkgs/klavika { };
          fk-display = pkgs.callPackage ./pkgs/fk/display { };
          fk-grotesk = pkgs.callPackage ./pkgs/fk/grotesk/regular { };
          fk-grotesk-semimono = pkgs.callPackage ./pkgs/fk/grotesk/semimono { };
          fk-grotesk-mono = pkgs.callPackage ./pkgs/fk/grotesk/mono { };
          fk-raster-grotesk = pkgs.callPackage ./pkgs/fk/raster-grotesk { };
          fk-roman-display = pkgs.callPackage ./pkgs/fk/roman/display { };
          fk-roman-text = pkgs.callPackage ./pkgs/fk/roman/text { };
          fk-screamer = pkgs.callPackage ./pkgs/fk/screamer { };
        };
      });
}
