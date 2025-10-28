{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./podman.nix
    ./vm.nix
    ./waydroid.nix
  ];
}
