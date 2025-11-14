{
  config,
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    # internet
    vesktop # custom discord client
    qbittorrent # de-facto standard torrenting client
    nicotine-plus # soulseek client
    mosh # mobile shell; a better ssh
    filezilla # ftp & sftp client
    jackett # api support for torrent trackers
    ungoogled-chromium # google chrome, without integration with google

    # desktop
    river-bsp-layout # binary space layout for river
    waybar # standard wayland bar
    matugen # generate material you color scheme from image
    inputs.vicinae.packages."${system}".default # raycast-compatible launcher
    swww # wallpaper daemon
    slurp # select a region
    wl-clipboard # interact with the wayland clipboard
    kitty # terminal emulator
    rofi # launcher
    mako # notification daemon
    wayfreeze # freeze a wayland output
    posy-cursors # THE best cursor
    libnotify # notify-send
    gtklock # gtk screen locker
    bitwarden-desktop # desktop application for bitwarden
    gcr # keyring GUI prompt
    xwayland-satellite # compositor-agnostic rootless xwayland
    inputs.heylisten.packages."${system}".default # alternative to poweralertd
    imv # image viewer
    openrgb # rgb control
    thunderbird # GUI mail client
    nautilus # GUI file manager
    labwc # floating wayland compositor
    wlsunset # adjust screen color temperature automatically
    bemenu # lightweight launcher
    picard # music tag editor
    flameshot # x11 screenshotting tool
    i3lock-fancy-rapid # x11 screen locker

    # media
    playerctl # control MPRIS
    wl-screenrec # lightweight screen recorder
    krita # painting program
    ffmpeg # the best program in the universe
    pavucontrol # GUI for pulseaudio
    strawberry # music player

    # cli
    gping # ping with a graph
    lf # minimalist TUI file manager
    hyperfine # benchmarker
    pandoc # convert between document formats
    fortune # output random quotes in the terminal
    cowsay # make a character say anything
    eva # calculator
    alejandra # nix formatter
    chezmoi # dotfiles manager
    zoxide # better cd
    fastfetch # system fetch tool
    starship # prompt
    jq # json manipulation tool
    bitwarden-cli # CLI interface for bitwarden
    chafa # display images in the terminal
    pastel # inspect colors
    jless # pager for json
    hexyl # hex view
    silicon # generate images of code
    wikit # display wikipedia summaries
    vivid # generate LS_COLORS from a theme
    ffmpegthumbnailer # create video thumbnails
    ov # better pager
    gnupg # standard PGP utility
    # nix-fast-build
    quickemu # fast interface for QEMU
    xdg-user-dirs # look up XDG user directories
    deno
    nodejs_24
    rustup
    arduino-cli
    uv # better python package manager
    ripgrep # faster grep
    fd # faster and friendlier find
    eza # featureful ls replacement
    bat # a great cat improvement
    sd # much friendlier sed
    just # better make
    dua # better du, with an optional TUI mode
    pass # standard unix password manager

    # tuis
    profanity # XMPP client
    youtube-tui # TUI for youtube, utilzing mpv for playback
    bottom # resource monitor
    fzf # fuzzy finder
    lazygit # TUI for git
    w3m # web browser
    aerc # mail client
    weechat # IRC client

    # gaming
    gamescope # valve's microcompositor for gaming
    gamemode # set some environment variables to make games run better, hopefully
    olympus # celeste mod manager
    prismlauncher # minecraft launcher
    mangohud # a resource monitor overlay
    pcsx2 # ps2 emulator
    lutris # game launcher

    # misc
    inputs.nixpkgs-25-05.legacyPackages.x86_64-linux.vulkan-tools
    inputs.winapps.packages."${system}".winapps # run windows apps in a docker container
    inputs.winapps.packages."${system}".winapps-launcher # launch windows apps as if they were native
    appimage-run
    gtk4
    adwaita-icon-theme
    pinentry-all # GPG's passphrase dialogue
    wine-wayland
    wine64
    winetricks
    grim # screenshot a wayland output
    kdePackages.kdeconnect-kde 
  ];
}
