{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./greetd.nix
    ./localization.nix
    ./steam.nix
    ./sway.nix
    ./x11.nix
  ];
}
