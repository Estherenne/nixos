{
  config,
  pkgs,
  ...
}: {
  home.pointerCursor = {
    name = "Posy";
    size = 24;
    package = pkgs.posy-cursors;
    x11.enable = true;
    gtk.enable = true;
  };
}
