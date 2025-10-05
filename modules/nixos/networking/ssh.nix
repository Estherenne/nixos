{ config, pkgs, ... }:

{
  services.openssh = {
    enable = true;
    ports = [ 3366 ];
    settings = {
      PasswordAuthentication = true;
      X11Forwwarding = false;
      PermitRootLogin = "no";
    };
  };

  services.fail2ban.enable = true;
}
