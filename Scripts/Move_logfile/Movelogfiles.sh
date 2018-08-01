#!/bin/sh
#Properties file on Remote Server
. ~/properties.prop
#Properties file on Remote Server

#Move the Dump to Central Area
CentralServer=/mnt/DemoLab_DB_Backup/$LOB
cd $LOCAL_PATH
tar -zcvf DUMP_`hostname -i`-`date '+%d-%m-%y_%H-%M-%S'`.tar.gz *
scp -r *.tar.gz gsh@10.184.158.90:$CentralServer
#Move the Dump to Central Area

#Delete the DUMP and tar file from Local Server
cd $LOCAL_PATH
rm -rf *.tar.gz
rm -rf *.log
rm -rf *.dmp
#Delete the DUMP and tar file from Local Server
