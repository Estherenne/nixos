{ config, pkgs, inputs, ... }:

{
  imports = [
      ./hardware-configuration.nix
  ];

  # bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # use latest kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "comet";
  # networking.wireless.enable = true;

  # enable networking
  networking.networkmanager.enable = true;

  # set your time zone
  time.timeZone = "Europe/Prague";

  # select internationalisation properties
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "cs_CZ.UTF-8";
    LC_MONETARY = "cs_CZ.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "cs_CZ.UTF-8";
    LC_PAPER = "cs_CZ.UTF-8";
    LC_TELEPHONE = "cs_CZ.UTF-8";
    LC_TIME = "cs_CZ.UTF-8";
  };

  # enable x11
  services.xserver.enable = true;

  # enable gnome and gdm
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  # enable sway
  programs.sway = {
    enable = true;
    extraOptions = [ "--unsupported-gpu" ]; # sway doesnt support nvidia gpus so this is needed
    package = pkgs.swayfx; # pretty effects
  };

  # configure keymap in x11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # enable CUPS to print documents
  services.printing.enable = true;

  # enable sound with pipewire
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # define Myself.
  users.users.ester = {
    isNormalUser = true;
    description = "Ester";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
  };

  # enable steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };

  # allow unfree
  nixpkgs.config.allowUnfree = true;

  # enable nix-helper
  programs.nh.enable = true;

  # enable docker
  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };

  # enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # some packages id like to have in any environment
  environment.systemPackages = with pkgs; [
    git
    inputs.nvim-nightly.packages."${pkgs.system}".default
    zig
  ];

  # add some fonts
  fonts.packages = with pkgs; [
    monaspace
    nerd-fonts.symbols-only
    rubik
  ];

  hardware.graphics.enable = true;

  # nvidia
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
    powerManagement.finegrained = true;
    open = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;

    prime = {
      offload = {
        enable = true;
        enableOffloadCmd = true;
      };

      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?

}
