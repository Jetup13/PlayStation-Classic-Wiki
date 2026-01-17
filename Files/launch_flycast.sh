#!/bin/bash
cd "/media/project_eris/etc/project_eris/SUP/launchers/flycast"
echo -n 2 > "/data/power/disable"
mount -o bind "/media/project_eris/etc/project_eris/SUP/launchers/flycast/lib/certs" /etc/ssl/certs
export PATH=/media/project_eris/etc/project_eris/SUP/launchers/flycast/bin:$PATH
export HOME=/media/project_eris/etc/project_eris/SUP/launchers/flycast/home
export LD_LIBRARY_PATH=/media/project_eris/etc/project_eris/SUP/launchers/flycast/lib
export SDL_GAMECONTROLLERCONFIG=/media/project_eris/etc/project_eris/SUP/launchers/flycast/gamecontrollerdb.txt
./flycast "/var/volatile/launchtmp/XXXXXYYYYY" &> "/media/logs/flycast.log"
umount -l /etc/ssl/certs
echo -n 1 > "/data/power/disable"
echo "launch_StockUI" > "/tmp/launchfilecommand"