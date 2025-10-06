{ config, pkgs, ... }:

{
  services.mpd = {
    enable = true;
    musicDirectory = "~/Music/"; 
    network.startWhenNeeded = true; # systemd feature: only start MPD service upon connection to its socket
  }; 
}
