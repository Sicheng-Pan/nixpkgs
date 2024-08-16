{ buildNpmPackage
, cctools
, darwin
, fetchFromGitHub
, lib
, node-gyp
, nodejs
, python3
, stdenv
}:

buildNpmPackage {
  pname = "nodehun";
  version = "3.0.2";

  src = fetchFromGitHub {
    owner = "Wulf";
    repo = "nodehun";
    rev = "03c9dcf1fcd965031a68553ccaf6487d1fe87f79";
    hash = "sha256-MoY95lSIQK1K4aIlMdPm93YxJuez9HYx2zlUhHvDao0=";
  };

  patches = [
    # fsevents is needed on Darwin, but its dependency "nan" in the upstream package-lock.json
    # is too old for the Node 18.x in Nixpkgs.
    # This patch is generated by checking out the upstream source and running
    # npm update nan --lockfile-version 1
    ./update-nan.patch
  ];

  npmDepsHash = "sha256-mV6rWNf2p2w4H0ESUT0/Ybtx9YEdvO5l2gCvlWFXK+U=";

  buildInputs = lib.optionals stdenv.isDarwin [ darwin.apple_sdk.frameworks.CoreServices ];
  nativeBuildInputs = [ node-gyp python3 ]
    ++ lib.optionals stdenv.isDarwin [ cctools ];

  postInstall = ''
    # Only keep the necessary parts of build/Release to reduce closure size
    cd $out/lib/node_modules/nodehun
    mv build build_old
    mkdir build
    cp -r build_old/Release build/
    rm -rf build_old
    rm -rf build/Release/.deps
    # Remove a development script to eliminate runtime dependency on node
    rm node_modules/node-addon-api/tools/conversion.js
  '';

  doInstallCheck = true;
  nativeCheckInputs = [ nodejs ];
  postInstallCheck = ''
    # Smoke check: require() works
    export NODE_PATH=$out/lib/node_modules
    echo 'require("nodehun")' | node -
  '';

  disallowedReferences = [ nodejs ];

  meta = with lib; {
    description = "Hunspell binding for NodeJS that exposes as much of Hunspell as possible and also adds new features";
    homepage = "https://github.com/Wulf/nodehun";
    license = licenses.mit;
    maintainers = [ maintainers.thomasjm ];
  };
}
