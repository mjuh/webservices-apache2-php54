with import <nixpkgs> {
  overlays = [
    (import (builtins.fetchGit { url = "git@gitlab.intr:_ci/nixpkgs.git"; ref = "wip-split"; }))
  ];
};

maketestPhp {
  php = php.php54;
  image = callPackage ./default.nix {};
  rootfs = ./rootfs;
}