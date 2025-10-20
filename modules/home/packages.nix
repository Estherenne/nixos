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
    gajim
    librewolf-bin

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
    xwayland-satellite
    inputs.heylisten.packages."${system}".default

    # media
    playerctl
    wl-screenrec
    krita
    ffmpeg
    pavucontrol

    # cli
    gping
    hugo
    chezmoi
    bat
    ripgrep
    eza
    fd
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
    chafa
    glow
    pastel
    hyperfine
    vhs
    rustup
    jless
    hexyl
    arduino-cli
    silicon
    tealdeer
    wikit
    lf

    # tuis
    dua
    youtube-tui
    bottom
    fzf
    delta
    lazygit
    browsh

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
    poweralertd
  ];
}
