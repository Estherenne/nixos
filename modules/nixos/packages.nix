{ config, pkgs, inputs, ... }:

{
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
}
