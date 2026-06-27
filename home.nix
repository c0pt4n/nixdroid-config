{ pkgs, ... }:

{

  home.stateVersion = "24.05";

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
	  aliases = {
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

  programs.starship = {
	enable = true;

	enableZshIntegration = true;
	settings = {
      add_newline = false;
      right_format = "$time";
      time = {
        disabled = false;
        format = "[$time]($style) ";
      };
      aws.symbol = " ";
      buf.symbol = " ";
      bun.symbol = " ";
      c.symbol = " ";
      cpp.symbol = " ";
      cmake.symbol = " ";
      conda.symbol = " ";
      crystal.symbol = " ";
      dart.symbol = " ";
      deno.symbol = " ";
      directory.read_only = " 󰌾";
      docker_context.symbol = " ";
      elixir.symbol = " ";
      elm.symbol = " ";
      fennel.symbol = " ";
      fortran.symbol = " ";
      fossil_branch.symbol = " ";
      gcloud.symbol = " ";
      git_branch.symbol = " ";
      git_commit.tag_symbol = "  ";
      golang.symbol = " ";
      gradle.symbol = " ";
      guix_shell.symbol = " ";
      haskell.symbol = " ";
      haxe.symbol = " ";
      hg_branch.symbol = " ";
      hostname.ssh_symbol = " ";
      java.symbol = " ";
      julia.symbol = " ";
      kotlin.symbol = " ";
      lua.symbol = " ";
      memory_usage.symbol = "󰍛 ";
      meson.symbol = "󰔷 ";
      nim.symbol = "󰆥 ";
      nix_shell.symbol = " ";
      nodejs.symbol = " ";
      ocaml.symbol = " ";
      os.symbols = {
        Alpaquita = " ";
        Alpine = " ";
        AlmaLinux = " ";
        Amazon = " ";
        Android = " ";
        Arch = " ";
        Artix = " ";
        CachyOS = " ";
        CentOS = " ";
        Debian = " ";
        DragonFly = " ";
        Elementary = " ";
        Emscripten = " ";
        EndeavourOS = " ";
        Fedora = " ";
        FreeBSD = " ";
        Garuda = "󰛓 ";
        Gentoo = " ";
        HardenedBSD = "󰞌 ";
        Illumos = "󰈸 ";
        Ios = "󰀷 ";
        Kali = " ";
        Linux = " ";
        Mabox = " ";
        Macos = " ";
        Manjaro = " ";
        Mariner = " ";
        MidnightBSD = " ";
        Mint = " ";
        NetBSD = " ";
        NixOS = " ";
        Nobara = " ";
        OpenBSD = "󰈺 ";
        openSUSE = " ";
        OracleLinux = "󰌷 ";
        Pop = " ";
        Raspbian = " ";
        Redhat = " ";
        RedHatEnterprise = " ";
        RockyLinux = " ";
        Redox = "󰀘 ";
        Solus = "󰠳 ";
        SUSE = " ";
        Ubuntu = " ";
        Unknown = " ";
        Void = " ";
        Windows = "󰍲 ";
        Zorin = " ";
      };
      package.symbol = "󰏗 ";
      perl.symbol = " ";
      php.symbol = " ";
      pijul_channel.symbol = " ";
      pixi.symbol = "󰏗 ";
      python.symbol = " ";
      rlang.symbol = "󰟔 ";
      ruby.symbol = " ";
      rust.symbol = "󱘗 ";
      scala.symbol = " ";
      status.symbol = " ";
      swift.symbol = " ";
      xmake.symbol = " ";
      zig.symbol = " ";
    };
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

  programs.tmux = {
	enable = true;

	baseIndex = 1;
	keyMode = "vi";
	escapeTime = 0;
  };

  programs.fzf = {
	enable = true;

	enableZshIntegration = true;
    tmux.enableShellIntegration = true;

	defaultCommand = "fd --type f --type symlink --hidden --strip-cwd-prefix";
	defaultOptions = [
	  "--tiebreak=begin"
	  "--layout=reverse"
	  "--height=~40%"
	  "--ansi"
	  "--gutter-raw="
	  "--highlight-line"
	  "--bind=ctrl-y:accept"
	  "--color=fg:7,hl:3,fg+:15,bg+:8,hl+:4,marker:10,pointer:0,gutter:0"
	  "--color=info:8,prompt:8,border:8,spinner:8,header:8"
    ];
  };
}
