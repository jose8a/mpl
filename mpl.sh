#!/bin/bash

# ===========================================================================
# GLOBAL VARIABLES
# ===========================================================================
OPTION=$1
PLAYLIST=$2

MPVEXEC="/Applications/mpv.app/Contents/MacOS/mpv"
MPVOPTS1="--no-video --shuffle --volume=50 --geometry=25%+10+10"

PL_FOLDER="/Users/jose8a/.mpl/playlists"

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
  PL_FILE="$PL_FOLDER/$PLAYLIST.list"
  PL_CMD="--playlist=$PL_FILE"

  # first check if the songlist exists
  if [ -e $PL_FILE ]
  then
    echo "Found songlist: $PL_FILE"

    # if the songlist path is valid, try playing the songlist
    if [ -e $MPVEXEC ]
    then
      echo "Playing $PLAYLIST"
      $MPVEXEC $PL_CMD $MPVOPTS1
    else
      echo
      echo -e "\x1b[0;31m  ERROR: MPV executable not found. \x1b[m"
    fi
  else
    echo
    echo -e "\x1b[0;31m  ERROR: Could not play songlist. \x1b[m"
    echo -e "\x1b[0;31m  NOT FOUND: $PL_FILE \x1b[m"
    echo
  fi
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

