{ config, pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    # internet
    vesktop
    inputs.zen-browser.packages."${system}".twilight
    qbittorrent
    nicotine-plus
    aerc

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
    mako
    wayfreeze
    autotiling-rs
    posy-cursors
    libnotify
    gtklock

    # media
    playerctl
    wl-screenrec
    wf-recorder
    obs-studio
    krita

    # cli
    chezmoi
    ripgrep
    eza
    fd
    fish
    zoxide
    fastfetch
    starship
    jq
    bun
    deno
    just
    bitwarden-cli
    nodejs_24
    netlify-cli
    eva

    # tuis
    dua
    btop
    yazi
    tmux
    fzf
    zellij

    # misc
    inputs.nixpkgs-25-05.legacyPackages.x86_64-linux.vulkan-tools
    inputs.winapps.packages."${system}".winapps 
    inputs.winapps.packages."${system}".winapps-launcher 
    gamescope
    gamemode 
    olympus 
  ];
}
