{ config, pkgs, ... }:

{
  networking.hostName = "comet";
  # enable networking
  networking.networkmanager = {
    enable = true;
    # ensureProfiles.profiles = {
    #   home-wifi = {
    #     connection = {
    #       id = "home-wifi";
    #       permissions = "";
    #       type = "wifi";
    #     };
    #     ipv4 = {
    #       dns-search = "";
    #       method = "auto";
    #     };
    #     ipv6 = {
    #       addr-gen-mode = "stable-privacy";
    #       dns-search = "";
    #       method = "auto";
    #     };
    #     wifi = {
    #       mac-address-blacklist = "";
    #       mode = "infrastructure";
    #       ssid = "cat ${config.sops.secrets."networks/network1/name".path}";
    #     };
    #     wifi-security = {
    #       auth-alg = "open";
    #       key-mgmt = "wpa-psk";
    #       psk = "cat ${config.sops.secrets."networks/network1/password".path}";
    #     };
    #   };
    # };
  };
}
