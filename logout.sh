#!/bin/bash

DATE=`date +"%Y%m%d"`
BACKUP=$HOME'/Private/PortableAppsBackup'

if [ -d /media/EARTHY/ ]; then
notify-send 'Begin EARTHY Drive Backup'
# Backup Keepass Data Files
cp $HOME/Private/cheiland.kdb /media/EARTHY/PortableApps/KeePassPortable/
cp $HOME/Private/pwds.kdb /media/EARTHY/PortableApps/KeePassPortable/
# Backup Earthy
tar cfvz /tmp/Earthy-$DATE.tgz /media/EARTHY/
mv /tmp/Earthy-$DATE.tgz $BACKUP/
sleep 5
# Cleanup Old Files
find $BACKUP/ -ctime '+30' -exec rm -f {} \
sleep 5
umount /media/EARTHY/
notify-send 'Finished EARTHY Drive Backup'
sleep 2
else
notify-send 'Backup Skipped: EARTHY Not Attached'
fi
# No matter what happens, let's just lock it
gnome-screensaver-command --lock
