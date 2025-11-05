{
  config,
  lib,
  pkgs,
  ...
}: {
  options = {
    graphics.enable =
      lib.mkEnableOption "Enable graphics, and install necessaary VA-API packages";
  };

  config = lib.mkIf config.graphics.enable {
    hardware.graphics = {
      enable = true;
      extraPackages = with pkgs; [
        nvidia-vaapi-driver
        vaapi-intel-hybrid
        intel-media-driver
        driversi686Linux.intel-vaapi-driver
      ];
    };
  };
}
