# everything in this file doesnt deserve its own separate file
{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./hardware
    ./networking
    ./desktop
    ./linux
    ./security
    ./virtualisation
    ./fonts.nix
    ./sops.nix
    ./packages.nix
    ./nix.nix
  ];

  programs.zsh.enable = true;

  # define myself
  users.users.ester = {
    isNormalUser = true;
    description = "Ester";
    extraGroups = ["networkmanager" "wheel" "docker" "video" "libvirtd"];
    shell = pkgs.zsh;
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
