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

    # tuis
    dua
    btop
    yazi

    # misc
    inputs.nixpkgs-25-05.legacyPackages.x86_64-linux.vulkan-tools
  ];

  home.enableNixpkgsReleaseCheck = false;
  home.stateVersion = "25.05";
}
