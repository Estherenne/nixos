{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./networking.nix
    ./ssh.nix
  ];
}
