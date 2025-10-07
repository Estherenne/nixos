{ config, pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    # internet
    vesktop
    inputs.zen-browser.packages."${system}".twilight
    qbittorrent
    nicotine-plus

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
    posy-cursors
    libnotify

    # media
    playerctl
    wl-screenrec
    wf-recorder
    obs-studio

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
    bun
    deno

    # tuis
    dua
    btop
    yazi

    # misc
    inputs.nixpkgs-25-05.legacyPackages.x86_64-linux.vulkan-tools
    inputs.winapps.packages."${system}".winapps 
    inputs.winapps.packages."${system}".winapps-launcher 
    gamescope
    gamemode 
    olympus 
  ];
}
