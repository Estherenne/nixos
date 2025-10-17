{
  config,
  pkgs,
  ...
}: {
  programs.sway = {
    enable = true;
    extraOptions = ["--unsupported-gpu"]; # sway doesnt support nvidia gpus so this is needed
    package = pkgs.swayfx; # pretty effects
    xwayland.enable = true;
  };
}
