#!/bin/bash

google-chrome &
sleep 1
firefox -no-remote -P Development &
sleep 1
gnome-terminal --maximize &
