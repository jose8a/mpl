#!/bin/bash

# ===========================================================================
# GLOBAL VARIABLES
# ===========================================================================
OPTION=$1
PLAYLIST=$2

MPVEXEC="/Applications/mpv.app/Contents/MacOS/mpv"
MPVOPTS1="--no-video --shuffle --volume=50 --geometry=25%+10+10"

PL_FOLDER="/Users/jose8a/.mpl/playlists"
PL_FILE="$PL_FOLDER/$PLAYLIST.list"

# ===========================================================================
# FUNCTIONS
# ===========================================================================
show_help() {
  cat HELP
}

show_songlist() {
  if [ -e $PL_FILE ]
  then
    NUMSONGS=$(wc -l $PL_FILE | cut -d / -f 1)
    echo
    echo "$NUMSONGS tunes in $PLAYLIST songlist:"
    echo "-----------------------------------"
    echo -e "\x1b[0;35m"
    cat $PL_FILE | xargs -n 1 echo "   "
    echo -e "\x1b[m"
    echo "-----------------------------------"
    echo
  else
    echo
    echo -e "\x1b[0;31m  ERROR: Could not find songlist. \x1b[m"
    echo -e "\x1b[0;31m  NOT FOUND: $PL_FILE \x1b[m"
    echo
  fi
}

show_playlists() {
  echo "All playlists:"
  echo "-----------------------------------"

  ls $PL_FOLDER | grep ".list" | cat | cut -d . -f 1

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

