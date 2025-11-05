{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./audio.nix
    ./graphics.nix
    ./nvidia.nix
    ./printing.nix
    ./bluetooth.nix
    ./openrgb.nix
  ];

  hardware.enableRedistributableFirmware = true;
}
