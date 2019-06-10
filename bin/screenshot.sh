#!/usr/bin/env bash

# Take a screenshot and then display the screenshot
# using mpv as a little preview thing.
FNAME="Screenshot_%y-%m-%d_at_%H-%M-%S.png"

if [[ $1 = "-s" ]];then
    # Select an area or click a window to take a screenshot of 
    # just the window
    scrot $FNAME -s -e 'mv $f ~/Pictures/Screenshots; mpv ~/Pictures/Screenshots/$f'
else
    # Screenshot of whole screen
    scrot $FNAME -e 'mv $f ~/Pictures/Screenshots; mpv ~/Pictures/Screenshots/$f'

fi
