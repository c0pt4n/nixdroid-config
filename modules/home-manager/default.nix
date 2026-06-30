{ ... }:

{
  imports = [
	./git.nix
	./neovim.nix
	./shell.nix
  ];

  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}
