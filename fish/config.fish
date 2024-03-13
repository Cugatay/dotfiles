if status is-interactive
	# For Vim
  alias vim="nvim"
	alias vimc="cd ~/.config/nvim && vim"
	# For LazyGit
	alias lg="lazygit"

  # For better ls
  # alias ls="exa --icons --group-directories-first"

  # bind \co "exec bash -c 'source ~/.config/fish/tmux-sessionizer.sh; exec fish'"
  bind \co "source ~/.config/fish/tmux-sessionizer.fish; commandline -f execute"

  function create-db
    # if enter a -h or --help, show the help message
    # if test "$argv" = "-h" -o "$argv" = "--help"
    #   echo "Usage: create-ps [database_name] [password]"
    #   echo "Creates a new postgres container with the given name and password"
    #   echo "If no name is provided, it will use 'postgres' as the default name"
    #   echo "If no password is provided, it will use '12345' as the default password"
    #   return
    # end

    set database_name $argv[1]
    if test -z "$database_name"
      set database_name "postgres"
    end

    set container_name (docker ps -a --format '{{.Names}}' | grep $database_name)
    if test -n "$container_name"
      echo "Container with the name $database_name already exists, starting it if not started"

      set container_status (docker ps -a --format '{{.Status}}' | grep $database_name)
      if test -z "$container_status"
        docker start $database_name
      end
    else
      set password $argv[1]
      if test -z "$password"
        set password "12345"
      end

      docker run --name $database_name -e POSTGRES_PASSWORD=$password -e POSTGRES_DB=$database_name -d -p 5432:5432 docker.io/postgres:alpine
      echo 'Created and started a new container'
      echo "Database name: $database_name"
      echo "Password: $password"
      echo "Connection string: postgresql://postgres:$password@localhost:5432/$database_name"
    end

  end


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

# pnpm
set -gx PNPM_HOME "/Users/cagataykaydir/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
fish_add_path $BUN_INSTALL/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/cagataykaydir/anaconda3/bin/conda
    eval /Users/cagataykaydir/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

