# everything in this file doesnt deserve its own separate file
{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  imports = [
    ./hardware
    ./networking
    ./desktop
    ./linux
    ./security
    ./virtualisation
    ./nix
    ./fonts.nix
    ./sops.nix
    ./packages.nix
  ];

  programs.zsh.enable = true;

  # define myself
  users.users.ester = {
    isNormalUser = true;
    description = "Ester";
    extraGroups = ["networkmanager" "wheel" "docker" "video" "libvirtd"];
    shell = pkgs.zsh;
  };

  nvidia.enable = true;
  graphics.enable = true;
  steam.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-gnome
    ];
  };

  # enable flatpak
  services.flatpak.enable = true;

  programs.wshowkeys.enable = true;

  services.power-profiles-daemon.enable = true;

  services.upower.enable = true;

  programs.dconf.enable = true;

  services.hardware.openrgb.enable = true;

  system.stateVersion = "25.05";
}
