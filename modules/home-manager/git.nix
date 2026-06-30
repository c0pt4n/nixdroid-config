{ ... }:

{
  programs.git = {
	enable = true;

	extraConfig = {
	  core = {
		editor = "nvim";
	  };
	  user = {
		name = "Omar Mohamed";
		email = "omarcoptan9@gmail.com";
	  };
	  alias = {
		a = "add";
		co = "checkout";
		cm = "commit -m";
		st = "status -sb";
		br = "branch";
		cl = "clone";
		dt = "difftool";
		wt = "worktree";
		ls = "ls-files";
		tree = "ls-tree --full-tree -r HEAD";
		logg = "log --oneline --graph --decorate";
		undo = "reset --soft HEAD^";
	  };
	  rebase = {
		autoStash = true;
	  };
	  diff = {
		tool = "nvimdiff";
	  };
	  difftool = {
		prompt = false;
	  };
	};

	delta.enable = true;
	delta.options = {
	  tabs = 4;
	  side-by-side = false;
	  syntax-theme = "Nord";
	  file-modified-label = "modified:";
	};
  };
}
