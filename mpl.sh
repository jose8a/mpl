#!/bin/bash

# ===========================================================================
# GLOBAL VARIABLES
# ===========================================================================
OPTION=$1
PLAYLIST=$2

# ===========================================================================
# FUNCTIONS
# ===========================================================================
show_help() {
  cat HELP
}

show_songlist() {
  # TODO
  echo TODO
}

show_playlists() {
  # TODO
  echo TODO
}

edit_playlist () {
  # TODO
  echo TODO
}

create_playlist () {
  # TODO
  echo TODO
}

play_songlist () {
  # TODO
  echo TODO
}

mpl_play_list () {
  # TODO
  echo TODO
}


# ===========================================================================
# USER INPUT ROUTING
# ===========================================================================
case $OPTION in
  -h)
      show_help
      ;;
  -l)
      show_songlist
      ;;
  -L)
      show_playlists
      ;;
  -e)
      edit_playlist
      ;;
  -c)
      create_playlist
      ;;
  -p)
      play_songlist
      ;;
   *)
      show_options_error
      show_help
      ;;
esac

