{ ... }:

{
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
        CentOS = " ";
        Debian = " ";
        DragonFly = " ";
        Emscripten = " ";
        EndeavourOS = " ";
        Fedora = " ";
        FreeBSD = " ";
        Garuda = "󰛓 ";
        Gentoo = " ";
        HardenedBSD = "󰞌 ";
        Illumos = "󰈸 ";
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
      };
      package.symbol = "󰏗 ";
      perl.symbol = " ";
      php.symbol = " ";
      pijul_channel.symbol = " ";
      python.symbol = " ";
      rlang.symbol = "󰟔 ";
      ruby.symbol = " ";
      rust.symbol = "󱘗 ";
      scala.symbol = " ";
      status.symbol = " ";
      swift.symbol = " ";
      zig.symbol = " ";
    };
  };

  programs.zsh = {
    enable = true;

	dotDir = ".config/zsh";
	autocd = true;
	syntaxHighlighting.enable = true;
	enableCompletion = true;
	enableAutosuggestions = true;
	history.size = 10000;
	envExtra = ''
	  eval "$(starship init zsh)"
	'';
  };

  programs.tmux = {
	enable = true;

	prefix = "C-a";
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
	  "--highlight-line"
	  "--bind=ctrl-y:accept"
	  "--color=fg:7,hl:3,fg+:15,bg+:8,hl+:4,marker:10,pointer:0,gutter:0"
	  "--color=info:8,prompt:8,border:8,spinner:8,header:8"
    ];
  };
}
