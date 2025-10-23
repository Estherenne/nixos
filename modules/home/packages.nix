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

    # desktop
    waybar
    matugen
    inputs.vicinae.packages."${system}".default
    swww
    slurp
    wl-clipboard
    light
    rofi
    ghostty
    mako
    wayfreeze
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
    deno
    nodejs_24
    just
    bitwarden-cli
    eva
    alejandra
    chafa
    pastel
    hyperfine
    rustup
    jless
    hexyl
    arduino-cli
    silicon
    wikit
    lf
    uv

    # tuis
    dua
    youtube-tui
    bottom
    fzf
    lazygit

    # virtualisation
    qemu
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
