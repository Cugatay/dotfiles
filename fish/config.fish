if status is-interactive
	# For Vim
  alias vim="nvim"
	alias vimc="cd ~/.config/nvim && vim"

	# For LazyGit
	alias lg="lazygit"

	# set -gx EDITOR nvim

	# System Bin
	fish_add_path /usr/local/bin
	fish_add_path /usr/bin
	fish_add_path /bin
	fish_add_path /usr/sbin
	fish_add_path /sbin

	# Homebrew
	fish_add_path /opt/homebrew/bin

	# Rust
	fish_add_path $HOME/.cargo/bin

	# Yarn
	# fish_add_path $HOME/.yarn/bin
	# fish_add_path $HOME/.config/yarn/global/node_modules/.bin

	# Deno
	fish_add_path /Users/cagataykaydir/.deno/bin

	# pnpm
	fish_add_path /Users/cagataykaydir/Library/pnpm

	# Golang
	fish_add_path /usr/local/go/bin
end

source /Users/cagataykaydir/.docker/init-fish.sh || true # Added by Docker Desktop

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true
