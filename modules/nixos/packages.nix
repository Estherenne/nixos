{
  config,
  pkgs,
  inputs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    git # standard version control
    inputs.nvim-nightly.packages."${pkgs.system}".default # neovim nightly (needed for vim.pack)
    zig # the zig programming language
    sops # easy to use encryption utility
    age # encrypton tool
    libva1 # VA-API libraries
    libva-utils # VA-API utilities
    python314
    bluetuith # TUI for bluetooth
    cyme # better lsusb
    pciutils # lspci
    uutils-coreutils-noprefix # replaces the GNU coreutils
    woff2
    dnsmasq
    gnumake # standard command runner
    gcc # gnu compiler collection
    zellij # my favorite multiplexer
    distrobox # different linux distros in containers
    unzip # standard utility for extracting zip files
    wireguard-tools # tools for interacting with wireguard
    carapace # a shell completion system
    qemu # virtualisation engine
    polkit_gnome # gnome's polkit agent
    wirelesstools # iwconfig
    net-tools # ifconfig
  ];
}
