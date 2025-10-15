{ config, pkgs, ... }:

{
  services.openssh = {
    enable = true;
    ports = [ 54873 ];
    settings = {
      PasswordAuthentication = false;
      PubkeyAuthentication = true;
      X11Forwarding = false;
      PermitRootLogin = "no";
    };
  };

  services.endlessh = {
    enable = true;
    openFirewall = true;
  };
}
