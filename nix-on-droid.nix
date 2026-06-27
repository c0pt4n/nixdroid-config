{ config, lib, pkgs, ... }:

{

  environment = {
    # Backup etc files instead of failing to activate generation if a file already exists in /etc
    packages = with pkgs; [
      zsh
      neovim
      procps
      killall
      diffutils
      findutils
      utillinux
      tzdata
      hostname
      man
      gnugrep
      gnupg
      gnused
      gnutar
      bzip2
      gzip
      xz
      zip
      unzip
      ncurses
      eza
      zoxide
      htop
      emacs
      tmux
      starship
      bat
      git
      gh
      fzf
      ripgrep
      fd
    ];
    motd = "Welcome to Nix On Droid!";
    sessionVariables = {
      EDITOR = "nvim";
    };
    etcBackupExtension = ".bak";
  };

  android-integration = {
    termux-setup-storage.enable = true;
    termux-open.enable = true;
  };

  # Terminal appearance - Nord theme
  terminal.colors = {
    background = "#2e3440";
    foreground = "#d8dee9";
    cursor = "#d8dee9";

    # Normal colors
    color0 = "#3b4252";  # black
    color1 = "#bf616a";  # red
    color2 = "#a3be8c";  # green
    color3 = "#ebcb8b";  # yellow
    color4 = "#81a1c1";  # blue
    color5 = "#b48ead";  # magenta
    color6 = "#88c0d0";  # cyan
    color7 = "#e5e9f0";  # white

    # Bright colors
    color8 = "#4c566a";   # bright black
    color9 = "#bf616a";   # bright red
    color10 = "#a3be8c";  # bright green
    color11 = "#ebcb8b";  # bright yellow
    color12 = "#81a1c1";  # bright blue
    color13 = "#b48ead";  # bright magenta
    color14 = "#8fbcbb";  # bright cyan
    color15 = "#eceff4";  # bright white
  };

  user.shell = "${pkgs.zsh}/bin/zsh";

  # Read the changelog before changing this value
  system.stateVersion = "24.05";

  time.timeZone = "Africa/Cairo";

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
	backupFileExtension = "hm-backup";
    config = import ./home.nix;
  };

  # Set up nix for flakes
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';
}
