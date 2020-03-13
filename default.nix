{ pkgs ? import <nixpkgs> {} }:
{
  farctool = pkgs.callPackage ./pkgs/farctool {};

  spica = pkgs.callPackage ./pkgs/spica {};

  # reexport
  ndstool = pkgs.ndstool;
  ctrtool = pkgs.ctrtool;
}
