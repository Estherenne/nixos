{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./greetd.nix
    ./localization.nix
    ./steam.nix
    ./x11.nix
  ];
}
