{ config, pkgs, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/nixos/default.nix
  ];

  system.stateVersion = "25.05";
}
