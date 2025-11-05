{
  config,
  lib,
  pkgs,
  ...
}: {
  options = {
    cli.enable =
      lib.mkEnableOption "Enable several useful CLI utilities";
  };

  config = lib.mkIf config.cli.enable {
    home.packages = with pkgs; [
      hyperfine # benchmarker
      pandoc # convert between document formats
      fortune # output random quotes in the terminal
      cowsay # make a character say anything
      eva # calculator
      alejandra # nix formatter
      chezmoi # dotfiles manager
      zoxide # better cd
      fastfetch # system fetch tool
      starship # prompt
      jq # json manipulation tool
      bitwarden-cli # CLI interface for bitwarden
      chafa # display images in the terminal
      pastel # inspect colors
      jless # pager for json
      hexyl # hex view
      silicon # generate images of code
      wikit # display wikipedia summaries
      vivid # generate LS_COLORS from a theme
      ffmpegthumbnailer # create video thumbnails
      ov # better pager
      gnupg # standard PGP utility
      # nix-fast-build
      quickemu # fast interface for QEMU
      xdg-user-dirs # look up XDG user directories
    ];
  };
}
