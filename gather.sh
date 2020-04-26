#!/bin/bash
##########################################################################
# Create_zip function to gather UserApplication troubleshooting bundle
#
#     Usage:
#
#     chmod +x gather.sh
#     (as root user) ./gather.sh
#     Enter Service Request number, when prompted
#
# Novell Inc. - Micro Focus International Plc.
# 1800 South Novell Place
# Provo, UT 84606-6194
# Script Name: gather.sh  - Version_1
# Created by: Elgie Davis - Novell Technical Services, Jan 2018
# Modified by: Mike Labit - Novell Technical Services, Feb 2019
##########################################################################

create_zip() {
mkdir $SR_Number
touch $SR_Number/info.txt

# EDIT OR COMMENT OUT
# nslookup $TGT_HOST >> info.txt
# nslookup $TGT_HOST2 >> info.txt

echo 'cat /etc/*release' > $SR_Number/info.txt

cat /etc/*release >> $SR_Number/info.txt

echo '==============================' >> $SR_Number/info.txt

echo 'cat /etc/hosts' >> $SR_Number/info.txt

cat /etc/hosts >> $SR_Number/info.txt

echo '==============================' >> $SR_Number/info.txt

echo 'netstat' >> $SR_Number/info.txt

netstat -patune |grep LISTEN >> $SR_Number/info.txt

echo '==============================' >> $SR_Number/info.txt

echo "ps -eaf" >> $SR_Number/info.txt

ps -eaf |grep tomcat >> $SR_Number/info.txt

echo '==============================' >> $SR_Number/info.txt

echo 'df -Th' >> $SR_Number/info.txt

df -Th >> $SR_Number/info.txt

echo '==============================' >> $SR_Number/info.txt

echo 'free' >> $SR_Number/info.txt

free -h >> $SR_Number/info.txt

echo '==============================' >> $SR_Number/info.txt

echo 'top' >> $SR_Number/info.txt

top -n 2 -b |head -n 30 >> $SR_Number/info.txt

echo '==============================' >> $SR_Number/info.txt

echo 'top2' >> $SR_Number/info.txt

top -n 2 -b |head -n 30 >> $SR_Number/info.txt

echo '==============================' >> $SR_Number/info.txt

echo 'll /opt/netiq/idm/apps/tomcat/conf' >> $SR_Number/info.txt

ll /opt/netiq/idm/apps/tomcat/conf >> $SR_Number/info.txt

echo 'end of file' >> $SR_Number/info.txt

# Copy Files
cp /opt/netiq/idm/apps/tomcat/conf/*.properties $SR_Number/
cp /opt/netiq/idm/apps/tomcat/conf/*.xml $SR_Number/
cp /opt/netiq/idm/apps/tomcat/conf/*.conf $SR_Number/
cp -r /opt/netiq/idm/apps/tomcat/conf/clients/ $SR_Number/
cp /opt/netiq/idm/apps/tomcat/conf/*.jks $SR_Number/
cp /opt/netiq/idm/apps/tomcat/conf/*.ks $SR_Number/
cp /opt/netiq/idm/apps/osp/*.jks $SR_Number/
cp /opt/netiq/idm/postgres/data/postgresql.conf $SR_Number/
cp /opt/netiq/idm/postgres/data/pg_hba.conf $SR_Number/

tar -czvf $SR_Number/install-logs.tgz /var/opt/netiq/idm/log/*

cp /opt/netiq/idm/apps/tomcat/bin/* $SR_Number/
cp /opt/netiq/idm/apps/tomcat/logs/* $SR_Number/

touch $SR_Number/lib-listing.txt
ls -l /opt/netiq/idm/apps/tomcat/lib/ > $SR_Number/lib-listing.txt

tar -czvf $SR_Number.tgz $SR_Number/*
rm -rf $SR_Number/

echo 'done'
}

# This code will ask for the Service Request number or any name they want to
# name the file to create in the current directory
#
echo Enter the Service Request number or a filename that will be created?
echo "Don't use a filename extension, For example: 1012322343"
# read the file name
echo
read SR_Number
echo
# display the filename with the path to verify they want to create the file here
# shows the path and filename in red
echo -e "The following file will be created:" "\e[0;31m"$PWD"/"$SR_Number".tgz" "\e[0m"
echo
# Continue with processing code
echo "Continue?  Y or N"
read answer
echo
echo
# Case statement to either exit the script or run the function
# that gathers all the data
case "$answer" in
   n)
      echo Exiting the script
      exit 1
      ;;
   N)
      echo Exiting the script
      exit 1
      ;;
   y)
      echo Creating zip file
      create_zip
      ;;
   Y)
      echo Creating zip file
      create_zip
      ;;
# Any response other than "Y", "y", "N", "n" will exit the script
   *)
      echo Answer a Y or N
      echo Exiting the script
      exit 1
      ;;
esac
