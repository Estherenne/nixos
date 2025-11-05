{
  config,
  pkgs,
  lib,
  ...
}: {
  options = {
    dev-cli.enable =
      lib.mkEnableOption "Enable CLI utilities for development";
  };

  config = lib.mkIf config.dev-cli.enable {
    home.packages = with pkgs; [
      deno
      nodejs_24
      rustup
      arduino-cli
      uv
    ];
  };
}
