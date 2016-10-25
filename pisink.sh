#!/bin/bash
# script to synchronise Pi files to backup
BACKUP_MOUNTED=$(mount | awk '/mnt/ {print $6}' | grep "rw")
if [ $BACKUP_MOUNTED ]; then
    echo $BACKUP_MOUNTED
    echo "Commencing Backup"
    rsync -avH --delete-during --delete-excluded --exclude-from=/usr/bin/rsync-exclude.txt / /mnt/pibackup/
else
    echo "Backup drive not available or not writable"
fi
