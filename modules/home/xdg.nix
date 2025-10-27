{
  config,
  pkgs,
  ...
}: {
  xdg = {
    mimeApps.enable = true;
    # note that these only cover file types that I encounter often
    mimeApps.defaultApplications = {
      # audio/*
      "audio/mp3" = "mpv.desktop";
      "audio/flac" = "mpv.desktop";
      "audio/ogg" = "mpv.desktop";
      "audio/opus" = "mpv.desktop";

      # image/*
      "image/png" = "imv.desktop";
      "image/gif" = "mpv.desktop";
      "image/jpeg" = "imv.desktop";

      # video/*
      "video/matroska" = "mpv.desktop";
      "video/mpeg" = "mpv.desktop";
      "video/mp4" = "mpv.desktop";
      "video/quicktime" = "mpv.desktop";

      # text/*
      "text/xml" = "nvim.desktop";
      "text/markdown" = "nvim.desktop";
      "text/javascript" = "nvim.desktop";
      "text/rust" = "nvim.desktop";
      "text/css" = "nvim.desktop";
    };
  };
}
