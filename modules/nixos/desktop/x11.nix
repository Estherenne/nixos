{
  config,
  pkgs,
  ...
}: {
  services.xserver = {
    # enable x11
    enable = true;

    # configure keymap in x11
    xkb = {
      layout = "us";
      variant = "";
    };
  };
}
