{ config, pkgs, ... }:

{
  imports = [
    ./cursor.nix
    ./mpd.nix
    ./packages.nix
  ];

  home.username = "ester";
  home.homeDirectory = "/home/ester";

  home.enableNixpkgsReleaseCheck = false;
  home.stateVersion = "25.05";
}
