#!/usr/bin/env fish

set window_path (find  ~/Desktop ~/Documents ~/.config -mindepth 1 -maxdepth 2 -type d | fzf)
set window_name (basename "$window_path" | tr . _)

if test -n "$window_path"
  # tmux new-window -c "$window_path" # -n "$window_name" # "nvim"
  cd "$window_path" # this is fish script
  # pwd

end


# tmux send-keys -Rt 0 "cd /path/to/your/directory" C-m
