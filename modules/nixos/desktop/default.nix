{ config, pkgs, ... }:

{
  imports = [
    ./gnome.nix
    ./localization.nix
    ./steam.nix
    ./sway.nix
    ./x11.nix
  ];
}
