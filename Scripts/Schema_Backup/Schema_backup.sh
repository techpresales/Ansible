#!/bin/sh
#CD to Home directory
cd
#CD to Home directory


#Execute Profile File
FILE=".profile"
if [ -f "$FILE" ]
then
 . ./.profile
 else
  . ./.bash_profile
  fi
#Execute Profile File


#Properties file on Remote Server
. ~/properties.prop
#Properties file on Remote Server


#Export Command
expdp $username/$password@$DBname schemas=$schemas directory=$DUMP_DIR dumpfile=$dumpname logfile=$logname
#Export Command
