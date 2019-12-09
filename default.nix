{ mkDerivation, base, data-ordlist, digits, hpack, stdenv, trifecta
, vector
}:
mkDerivation {
  pname = "aoc";
  version = "2019.0.5.0";
  src = ./.;
  libraryHaskellDepends = [
    base data-ordlist digits trifecta vector
  ];
  libraryToolDepends = [ hpack ];
  doHaddock = false;
  prePatch = "hpack";
  homepage = "https://github.com/yurrriq/aoc19#readme";
  description = "My Haskell solutions to Advent of Code problems";
  license = stdenv.lib.licenses.mit;
  maintainers = with stdenv.lib.maintainers; [ yurrriq ];
}
