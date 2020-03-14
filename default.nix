{ pkgs ? import <nixpkgs> { } }: rec {
  farctool = pkgs.callPackage ./pkgs/farctool { };

  spica = pkgs.callPackage ./pkgs/spica { };

  ndspy = pkgs.python3Packages.callPackage ./pkgs/python/ndspy { };
  skytemple-files =
    pkgs.python3Packages.callPackage ./pkgs/python/skytemple-files {
      inherit ndspy;
    };
  skytemple = pkgs.python3Packages.callPackage ./pkgs/python/skytemple {
    inherit skytemple-files;
  };

  # reexport
  ndstool = pkgs.ndstool;
  ctrtool = pkgs.ctrtool;
}
