with import <nixpkgs> {
#add_postfix_test
  overlays = [
    (import (builtins.fetchGit { url = "git@gitlab.intr:_ci/nixpkgs.git"; ref = "wip-nixos-tests"; }))
  ];
};

php54-image
