{
  config,
  pkgs,
  ...
}: {
  security.sudo.enable = false;

  security.doas = {
    enable = true;
    extraRules = [
      {
        users = ["ester"];

        keepEnv = true;
        persist = true;
      }
    ];
  };
}
