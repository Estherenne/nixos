{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./packages
    ./cursor.nix
    ./mpv.nix
    ./packages.nix
    ./xdg.nix
  ];

  home.username = "ester";
  home.homeDirectory = "/home/ester";

  services.gnome-keyring.enable = true;

  home.enableNixpkgsReleaseCheck = false;
  home.stateVersion = "25.05";
}
