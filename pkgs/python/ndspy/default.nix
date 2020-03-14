{ stdenv, buildPythonPackage, fetchPypi, crcmod }:

buildPythonPackage rec {
  pname = "ndspy";
  version = "3.0.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1s0i81gspas22bjwk9vhy3x5sw1svyybk7c2j1ixc77drr9ym20a";
  };

  propagatedBuildInputs = [ crcmod ];
}
