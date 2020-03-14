{ stdenv, buildPythonApplication, fetchFromGitHub, pygobject3, gtk3
, gobject-introspection, skytemple-files, natsort }:

buildPythonApplication rec {
  pname = "skyemple";
  version = "latest";

  src = fetchFromGitHub {
    owner = "SkyTemple";
    repo = "skytemple";
    rev = "802fde4b99e8c9e38a82d0bd260cf63dc8cff727";
    sha256 = "1k02dvxbm7yw51c63xv0ayngh160ddqb07pinw7myxgfyhymry4f";
  };

  propagatedBuildInputs =
    [ pygobject3 gobject-introspection skytemple-files natsort ];
  buildInputs = [ gtk3 ];

  
  doCheck = false;

  meta = with stdenv.lib; { license = licenses.gpl3; };
}
