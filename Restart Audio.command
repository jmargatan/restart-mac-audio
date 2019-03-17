#!/usr/bin/env bash
#title        : Restart Audio.command
#description  : Restart Mac audio controller.
#author		    : @jmargatan
#usage		    : ./Restart\ Audio.command
#notes        : Needs pgrep and sudo access

CURRENT_COREAUDIOD_PID=$(pgrep coreaudiod)
echo "Current coreaudiod PID:" $CURRENT_COREAUDIOD_PID

KILL_COREAUDIOD_CMD=$(echo "sudo kill" $CURRENT_COREAUDIOD_PID)
echo "Executing:" $KILL_COREAUDIOD_CMD

if eval $KILL_COREAUDIOD_CMD; then
  NEW_COREAUDIOD_PID=$(pgrep coreaudiod)
  echo "New coreaudiod PID:" $NEW_COREAUDIOD_PID
else
  echo "Failed to execute."
fi

# Prevent terminal from closing.
read -n 1 -s -r -p "Press any key to continue."
