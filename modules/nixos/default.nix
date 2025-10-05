# everything in this file doesnt deserve its own separate file
{ config, pkgs, inputs, ... }:

{
  imports = [
    ./hardware/audio.nix
    ./hardware/printing.nix
    ./hardware/nvidia.nix
    ./networking/networking.nix
    # ./networking/ssh.nix
    ./desktop/gnome.nix
    ./desktop/sway.nix
    ./desktop/localization.nix
    ./desktop/x11.nix
    ./desktop/steam.nix
    ./linux/kernel.nix
    ./linux/bootloader.nix
    ./fonts.nix
    ./docker.nix
    ./sops.nix
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

  # packages id like to have anywhere
  environment.systemPackages = with pkgs; [
    git
    inputs.nvim-nightly.packages."${pkgs.system}".default
    zig
    sops
    nvidia-vaapi-driver
    vaapi-intel-hybrid
    libva1
    intel-media-driver
    libva-utils
    driversi686Linux.intel-vaapi-driver
  ];

  # enable flatpak
  services.flatpak.enable = true;
}
