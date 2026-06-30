{ config, lib, pkgs, ... }:

{
  imports = [ ./nix-on-droid ];

  # Read the changelog before changing this value
  system.stateVersion = "24.05";

  home-manager = {
    useGlobalPkgs = false;
    useUserPackages = true;
    backupFileExtension = "hm-backup";
    config = import ./home-manager;
  };

  # Set up nix for flakes
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';
}
