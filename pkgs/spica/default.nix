{ stdenv, buildDotnetPackage, mono, fetchpatch, fetchFromGitHub }:

buildDotnetPackage rec {
  baseName = "SPICA";
  version = "unstable";

  src = fetchFromGitHub {
    owner = "gdkchan";
    repo = baseName;
    rev = "e099ae4b165b891a3e5fae80d064b637a39f2827";
    sha256 = "0xq70bq6phn5kk2fpwia3nm8s76fkb4a4dgvylbq2i7j0azcz9pp";
  };

  patches = [
    (fetchpatch {
      url = "https://github.com/gdkchan/SPICA/pull/85.patch";
      sha256 = "0zz4czig1x2mkhbcjkpg9r9jbkxdam9kfg488d721nf5h8pbb6ay";
    })
  ];

  outputFiles = [ "./SPICA.WinForms/bin/Release/*" ];

  meta = with stdenv.lib; { license = licenses.unlicense; };
}
