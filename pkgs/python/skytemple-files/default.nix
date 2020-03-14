{ stdenv, buildPythonPackage, fetchFromGitHub, ndspy, pillow }:

buildPythonPackage rec {
  pname = "skytemple-files";
  version = "latest";

  src = fetchFromGitHub {
    owner = "SkyTemple";
    repo = pname;
    rev = "8a809ac6d26e46dc57dc7b53fb083697b80e48b7";
    sha256 = "10d7r2dw06amafqzykw089lpsmmn41pvagcv191b71pagxfhs8jc";
  };

  propagatedBuildInputs = [ ndspy pillow ];

  # require a nsd rom
  doCheck = false;

  meta = with stdenv.lib; { license = licenses.gpl3; };
}
