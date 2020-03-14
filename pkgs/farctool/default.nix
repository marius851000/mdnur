{ stdenv, rustPlatform, fetchFromGitHub }:
rustPlatform.buildRustPackage rec {
  pname = "farctool";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "marius851000";
    repo = pname;
    rev = "634fc5285e902297d1b0c38a142a401f47ffe49a";
    sha256 = "1bh44kbaxl8ysgv03292gxywc5vi0xi7ji3md5nnz5a2ihk1m4k0";
  };

  cargoSha256 = "08l4yv0pb6hp0h3xhjis4y47b1ghy6a89p4spgzcm7w1a1ik5rlb";

  meta = with stdenv.lib; { license = licenses.cc0; };
}
