{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [
    monaspace
    nerd-fonts.symbols-only
    rubik
    adwaita-fonts
    google-fonts
  ];
}
