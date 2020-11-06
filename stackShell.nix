# {nixpkgs ? import <nixpkgs> { config = import ./config.nix; }, ghc ? nixpkgs.ghc}:
{nixpkgs ? import <nixpkgs> {}, ghc ? nixpkgs.ghc}:

# let nixpkgs2 = builtins.fetchTarball {
#     url = "https://github.com/NixOS/nixpkgs/archive/27aaaa5ba6923104a23bae75d323dc975390195e.tar.gz";
#     sha256 = "0jxn25l8d65h6qnmx9f4dsi2fscqyxc0gvhnkj1bc7kicn9rr5hj";
#   };
# in


with nixpkgs;

haskell.lib.buildStackProject {
  name = "nuptialem";
  buildInputs = [ postgresql_11
                  zlib
                  haskellPackages.yesod-bin
                  msmtp
                  gmp
                  git
                ];
  inherit ghc;
}
