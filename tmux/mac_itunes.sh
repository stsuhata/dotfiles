#!/bin/sh

state=`osascript -e 'tell application "iTunes" to player state as string'`;
if [ $state = "playing" ]; then
    artist=`osascript -e 'tell application "iTunes" to artist of current track as string'`;
    track=`osascript -e 'tell application "iTunes" to name of current track as string'`;
    echo "♪ $artist: $track";
else
    echo "No Playing"
fi
