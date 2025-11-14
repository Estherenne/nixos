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

  services.xserver.windowManager.awesome.enable = true;
  services.xserver.enable = true;
  services.xserver.displayManager.startx.enable = true;

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
      xdg-desktop-portal-wlr
    ];
  };

  # enable flatpak
  services.flatpak.enable = true;

  programs.wshowkeys.enable = true;

  services.tlp.enable = true;

  services.upower.enable = true;

  programs.dconf.enable = true;

  services.hardware.openrgb.enable = true;

  programs.river.enable = true;

  system.stateVersion = "25.05";
}
