#!/bin/bash

# ===========================================================================
# GLOBAL VARIABLES
# ===========================================================================
OPTION=$1
PLAYLIST=$2

MPVEXEC="/Users/jose8a/Downloads/mps/mpv.app/Contents/MacOS/mpv"
MPVOPTS1="--no-video --shuffle --volume=50"

MPL_PLAYLISTS="/Users/jose8a/.mpl/playlists"


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
  echo "All playlists:"
  echo "-----------------------------------"

  ls $MPL_PLAYLISTS | grep ".list" | cat | cut -d . -f 1

  echo "-----------------------------------"
  echo
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

