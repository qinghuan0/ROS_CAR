#!/bin/sh

gnome-terminal --tab -e "roscore" \
--tab -e "chmod 777 /dev/ttyUSB*" \
--tab -e "roslaunch robot_navigation robot_slam.launch slam_type:=manual" \
