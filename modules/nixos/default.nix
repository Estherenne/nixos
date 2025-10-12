# everything in this file doesnt deserve its own separate file
{ config, pkgs, inputs, ... }:

{
  imports = [
    ./hardware
    ./networking
    ./desktop
    ./linux
    ./fonts.nix
    ./docker.nix
    ./sops.nix
    ./packages.nix
  ];

  # define myself
  users.users.ester = {
    isNormalUser = true;
    description = "Ester";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
  };

  # allow unfree
  nixpkgs.config.allowUnfree = true;

  # enable nix-helper
  programs.nh.enable = true;

  # enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # enable flatpak
  services.flatpak.enable = true;

  programs.wshowkeys.enable = true;

  services.power-profiles-daemon.enable = true;

  system.stateVersion = "25.05";
}
