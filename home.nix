{ config, pkgs, inputs, ... }:

{
  home.username = "ester";
  home.homeDirectory = "/home/ester";
  
  home.packages = with pkgs; [
    # internet
    vesktop
    inputs.zen-browser.packages."${system}".twilight

    # desktop
    waybar
    matugen
    inputs.vicinae.packages."${system}".default
    swww
    grim
    slurp
    wl-clipboard
    light
    rofi
    ghostty
    wshowkeys
    mako
    wayfreeze
    autotiling-rs

    # cli
    chezmoi
    ripgrep
    eza
    fd
    fish
    fzf
    zoxide
    fastfetch
    starship
    jq

    # tuis
    dua
    btop
    yazi

    # misc
    inputs.nixpkgs-25-05.legacyPackages.x86_64-linux.vulkan-tools
    inputs.winapps.packages."${system}".winapps 
    inputs.winapps.packages."${system}".winapps-launcher 
    gamescope
  ];

  services.mpd = {
    enable = true;
    musicDirectory = "~/Music/"; 
    network.startWhenNeeded = true; # systemd feature: only start MPD service upon connection to its socket
  }; 

  home.enableNixpkgsReleaseCheck = false;
  home.stateVersion = "25.05";
}
