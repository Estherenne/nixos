{ config, pkgs, ... }:

{
  imports = [
    ./kernel.nix
    ./bootloader.nix
  ];
}
