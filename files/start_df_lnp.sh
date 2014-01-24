#!/bin/bash

Xvfb -screen 0 1024x768x16 -ac &
DISPLAY=:0 x11vnc &

DISPLAY=:0 /bin/Dwarf\ Fortress/startlnp
