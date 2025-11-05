{pkgs, ...}: {
  nixpkgs.overlays = [
    (final: prev: {
      inherit
        (prev.lixPackageSets.stable)
        nix-eval-jobs
        nix-fast-build
        ;
    })
  ];

  nix.package = pkgs.lixPackageSets.stable.lix;
}
