{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [
    monaspace
    nerd-fonts.symbols-only
    rubik
  ];
}
