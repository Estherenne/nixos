{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./networking.nix
    ./ssh.nix
    ./wireguard.nix
    ./tailscale.nix
  ];
}
