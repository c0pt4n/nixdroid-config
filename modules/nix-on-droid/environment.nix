{ pkgs, ... }:

{
  environment = {
    motd = null;
    sessionVariables = {
      EDITOR = "nvim";
    };
    etcBackupExtension = ".bak";
  };

  user.shell = "${pkgs.zsh}/bin/zsh";

  time.timeZone = "Africa/Cairo";
}
