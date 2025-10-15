{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    inputs.nvim-nightly.packages."${pkgs.system}".default
    zig
    sops
    libva1
    libva-utils
    python314
    bluetuith
    cyme
    pciutils
    uutils-coreutils-noprefix
    woff2
    keyd
  ];
}
