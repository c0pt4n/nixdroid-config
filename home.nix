{ pkgs, ... }:

{

  home.stateVersion = "24.05";

  programs.starship = {
	enable = true;

	enableZshIntegration = true;
  };

  programs.zsh = {
    enable = true;

	dotDir = ".config/zsh";
	autocd = true;
	syntaxHighlighting.enable = true;
	history.size = 10000;
	envExtra = ''
	  eval "$(starship init zsh)"
	'';
  };
}
