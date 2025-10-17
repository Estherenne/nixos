{
  config,
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    # internet
    vesktop
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
    mako
    wayfreeze
    autotiling-rs
    posy-cursors
    libnotify
    gtklock
    bitwarden-desktop
    gcr

    # media
    playerctl
    wl-screenrec
    krita
    ffmpeg
    pavucontrol

    # cli
    chezmoi
    bat
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
    nodejs_24
    just
    bitwarden-cli
    netlify-cli
    eva
    alejandra

    # tuis
    dua
    btop
    yazi
    tmux
    fzf

    # virtualisation
    qemu 
    quickemu

    # misc
    inputs.nixpkgs-25-05.legacyPackages.x86_64-linux.vulkan-tools
    inputs.winapps.packages."${system}".winapps
    inputs.winapps.packages."${system}".winapps-launcher
    gamescope
    gamemode
    olympus
    appimage-run
    gtklock-playerctl-module
    gtk4
    adwaita-icon-theme
  ];
}
