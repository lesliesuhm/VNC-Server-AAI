#!/bin/sh
# VNC Server Installation Script for Ubuntu 14.04, and every version up, including 18.04.
# Xfce4 Desktop Environment
# Run with sudo ./
# You may need to chmod +x the file
# Commands meant for current user will be run as current user NOT sudo
#
# Please Change VNCUSER Variable to Current User Before Running!
# You will have to enter a password for VNC right after the the packages are installed
#
# This is the second version of this script, see CHANGELOG for all of the changes I have made.
 
 
VNCUSER="change_to_current_user_before_running"
 
 
#----------DO NOT EDIT BELOW THIS LINE---------------
 
echo "Make sure to change the VNCUSER variable first!"
sleep 3
echo "You will need to enter a VNC password after the package installation"
sleep 5
echo "Updating System Repostitories"
apt-get -y update
sleep 1
echo "Starting VNC Installation"
sleep 1
apt-get -y install xfce4 xfce4-goodies tightvncserver
sleep 1
echo "Packages installed, starting VNC configurations"
sleep 1
sudo -u $VNCUSER vncserver
sleep 1
sudo -u $VNCUSER vncserver -kill :1
sleep 1
sudo -u $VNCUSER mv ~/.vnc/xstartup ~/.vnc/xstartup.bak
sleep 1
sudo -u $VNCUSER mv configs/xfce4_configs ~/.vnc/xstartup
sleep 1
sudo -u $VNCUSER chmod +x ~/.vnc/xstartup
sleep 1
sudo -u $VNCUSER vncserver
sleep 1
sudo -u $VNCUSER vncserver -kill :1
sleep 1
echo "VNC Server Successfully Installed!"
echo "Start VNC Server with the following command"
sleep 1
echo " "
echo "       vncserver      "
echo " "
sleep 1
echo " "
sleep 1
echo "All Credit goes to Leslie Suhm!"
sleep 1
echo "Check us out at Github!"
sleep 1
echo "https://github.com/lesliesuhm/VNC-Server-AAI"
