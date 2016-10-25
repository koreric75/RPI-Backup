#!/bin/sh
# Script to backup the SD card of a Pi to the nas.
# This should be copied to the /home/pi directory on each Pi and then
# set in the crontab to run automatically on a set schedule.
# Be sure to pass in a single argument to name the backup file
# (e.g. homePiBackup or mediaPiBackup)
#
# Refer here for the original information:
# http://www.stuffaboutcode.com/2012/08/raspberry-pi-auto-backups.html
sudo bash -c dd if=/dev/mmcblk0 | sudo gzip  /mnt/library/pibackups/
