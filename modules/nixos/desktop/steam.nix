{
  config,
  pkgs,
  lib,
  ...
}: {
  options = {
    steam.enable =
      lib.mkEnableOption "Enables Steam and opens some ports in the firewall for it";
  };

  config = lib.mkIf config.steam.enable {
    programs.steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      localNetworkGameTransfers.openFirewall = true;
    };
  };
}
