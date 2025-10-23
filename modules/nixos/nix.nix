{
  config,
  pkgs,
  ...
}: {
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [];

  nix.settings.experimental-features = ["nix-command" "flakes"];

  # enable nix-helper
  programs.nh.enable = true;

  nixpkgs.config.allowUnfree = true;
}
