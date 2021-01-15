let
  nixpkgs = import (
    let
      version = "2996d6df1de087c18d94eda470be6b7618b8dc5c";
    in builtins.fetchTarball {
      name   = "nixpkgs-${version}";
      url    = "https://github.com/NixOS/nixpkgs/archive/${version}.tar.gz";
      sha256 = "0q941nyx8gjsykivb17lgkn13cv9b3f7kfkxszhmdg4xnpcagg63";
    }
  ) {};

in nixpkgs.mkShell {
  buildInputs = [
    nixpkgs.go
  ];
}
