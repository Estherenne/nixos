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
    ./fonts.nix
    ./docker.nix
    ./sops.nix
    ./packages.nix
    ./nix.nix
  ];

  programs.fish.enable = true;

  programs.niri.enable = true;

  # define myself
  users.users.ester = {
    isNormalUser = true;
    description = "Ester";
    extraGroups = ["networkmanager" "wheel" "docker" "keyd"];
    shell = pkgs.fish;
  };

  # enable flatpak
  services.flatpak.enable = true;

  programs.wshowkeys.enable = true;

  services.power-profiles-daemon.enable = true;

  security.sudo.enable = false;
  security.doas.enable = true;

  virtualisation.waydroid.enable = true;

  services.upower.enable = true;

  programs.dconf.enable = true;

  system.stateVersion = "25.05";
}
