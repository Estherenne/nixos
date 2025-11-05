{
  config,
  pkgs,
  lib,
  ...
}: {
  options = {
    posix_replacements.enable =
      lib.mkEnableOption "Enable POSIX replacements";
  };

  config = lib.mkIf config.posix_replacements.enable {
    home.packages = with pkgs; [
    ];
  };
}
