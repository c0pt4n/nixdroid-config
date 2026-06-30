{ pkgs, ... }:

{
  environment = {
    packages = with pkgs; [
      openssh
      zsh
      procps
      coreutils
      which
      gawk
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
  };
}
