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
    mosh

    # desktop
    waybar
    matugen
    inputs.vicinae.packages."${system}".default
    swww
    slurp
    wl-clipboard
    kitty
    rofi
    mako
    wayfreeze
    posy-cursors
    libnotify
    gtklock
    bitwarden-desktop
    gcr
    xwayland-satellite
    inputs.heylisten.packages."${system}".default
    imv
    openrgb

    # media
    playerctl
    wl-screenrec
    krita
    ffmpeg
    pavucontrol

    # cli
    sd
    xdg-user-dirs
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
    deno
    nodejs_24
    just
    bitwarden-cli
    eva
    alejandra
    chafa
    pastel
    hyperfine
    fortune
    cowsay
    rustup
    jless
    hexyl
    arduino-cli
    silicon
    wikit
    lf
    uv
    vivid
    ffmpegthumbnailer

    # tuis
    dua
    youtube-tui
    bottom
    fzf
    lazygit
    w3m

    # virtualisation
    quickemu

    # gaming
    gamescope
    gamemode
    olympus
    prismlauncher

    # misc
    inputs.nixpkgs-25-05.legacyPackages.x86_64-linux.vulkan-tools
    inputs.winapps.packages."${system}".winapps
    inputs.winapps.packages."${system}".winapps-launcher
    appimage-run
    gtk4
    adwaita-icon-theme
  ];
}
