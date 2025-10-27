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
    ./fonts.nix
    ./docker.nix
    ./sops.nix
    ./packages.nix
    ./nix.nix
  ];

  programs.fish.enable = true;
  programs.zsh.enable = true;

  programs.niri.enable = true;

  # define myself
  users.users.ester = {
    isNormalUser = true;
    description = "Ester";
    extraGroups = ["networkmanager" "wheel" "docker" "keyd" "video" "libvirtd" "disk"];
    shell = pkgs.zsh;
  };

  # enable flatpak
  services.flatpak.enable = true;

  programs.wshowkeys.enable = true;

  services.power-profiles-daemon.enable = true;

  virtualisation.waydroid.enable = true;

  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;

  services.upower.enable = true;

  programs.dconf.enable = true;

  programs.light.enable = true;

  security.polkit.enable = true;

  system.stateVersion = "25.05";
}
