#!/bin/sh
# Uninstall Script for VNC Server AAI XFCE
# Use if you forget to put the name variable or run as non-sudo
# Run with sudo ./
#
#
# This is the second version of this script, see CHANGELOG for all of the changes I have made.
#
#---------------DO NOT EDIT BELOW THIS LINE--------------------
echo "Warning: Will remove all VNC Packages"
sleep 1
echo "Do not run this script if you have successfully setup VNC Server"
echo "either on your own or from the VNC-AAI Script"
sleep 2
echo "Press Ctrl+C if you started this script by accident"
echo "You will have 10 seconds"
sleep 1
echo "10"
sleep 1
echo "9"
sleep 1
echo "8 - Press Ctrl+C to cancel"
sleep 1
echo "7"
sleep 1
echo "6"
sleep 1
echo "5 - Press Ctrl+C to cancel"
sleep 1
echo "4"
sleep 1
echo "3 - Press Ctrl+C to cancel"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
echo "Uninstalling all VNC packages"
sleep 3
apt-get -y remove xfce4 xfce4-goodies tightvncserver
sleep 1
apt-get -y purge xfce4 xfce4-goodies tightvncserver
sleep 1
apt-get -y autoremove
sleep 1
echo "VNC-AAI-16-04-XFCE4.sh has successfully been uninstalled"
sleep 1
echo "All credit to Leslie Suhm!"
sleep 1
echo "Check us out at Github!"
sleep 1
echo "https://github.com/lesliesuhm/VNC-Server-AAI"
