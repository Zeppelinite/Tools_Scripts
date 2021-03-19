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
mkdir $SR_Number/sites
mkdir $SR_Number/sspr
mkdir $SR_Number/postgres
touch $SR_Number/server_info.txt

# Server Info
echo |openssl s_client -connect $SERVER -showcerts > $SR_Number/cert_info.txt

echo 'IDApps version info' > $SR_Number/server_info.txt
cat /opt/netiq/idm/apps/tomcat/webapps/idmdash/META-INF/maven/com.microfocus.idmdash/idmdash/pom.properties |grep version >> $SR_Number/server_info.txt

echo '==============================' >> $SR_Number/server_info.txt

echo 'Java version info' >> $SR_Number/server_info.txt
/opt/netiq/common/jre/bin/java -version >> $SR_Number/server_info.txt

echo '==============================' >> $SR_Number/server_info.txt

echo 'Tomcat version info' >> $SR_Number/server_info.txt
cat /opt/netiq/idm/tomcat/RELEASE-NOTES |grep "Apache Tomcat Version" >> $SR_Number/server_info.txt

echo '==============================' >> $SR_Number/server_info.txt

echo 'cat /etc/*release' >> $SR_Number/server_info.txt
cat /etc/*release >> $SR_Number/server_info.txt

echo '==============================' >> $SR_Number/server_info.txt

echo 'cat /etc/hosts' >> $SR_Number/server_info.txt
cat /etc/hosts >> $SR_Number/server_info.txt

echo '==============================' >> $SR_Number/server_info.txt

echo 'ifconfig' >> $SR_Number/server_info.txt
ifconfig >> $SR_Number/server_info.txt

echo '==============================' >> $SR_Number/server_info.txt

echo 'ip address' >> $SR_Number/server_info.txt
ip address >> $SR_Number/server_info.txt

echo '==============================' >> $SR_Number/server_info.txt

echo 'netstat output' >> $SR_Number/server_info.txt
netstat -patune |grep LISTEN >> $SR_Number/server_info.txt

echo '==============================' >> $SR_Number/server_info.txt

echo 'netstat WAIT threads' >> $SR_Number/server_info.txt
netstat -patune |grep WAIT >> $SR_Number/server_info.txt

echo '==============================' >> $SR_Number/server_info.txt

echo "tomcat process info (ps -eaf)" >> $SR_Number/server_info.txt
ps -eaf |grep tomcat >> $SR_Number/server_info.txt

echo '==============================' >> $SR_Number/server_info.txt

echo "postgresql process (ps -eaf)" >> $SR_Number/server_info.txt
ps -eaf |grep postgres >> $SR_Number/server_info.txt

echo '==============================' >> $SR_Number/server_info.txt

echo "ActiveMQ process (ps -eaf)" >> $SR_Number/server_info.txt
ps -eaf |grep active >> $SR_Number/server_info.txt

echo '==============================' >> $SR_Number/server_info.txt

echo 'df -Th' >> $SR_Number/server_info.txt
df -Th >> $SR_Number/server_info.txt

echo '==============================' >> $SR_Number/server_info.txt

echo 'free' >> $SR_Number/server_info.txt
free -h >> $SR_Number/server_info.txt

echo '==============================' >> $SR_Number/server_info.txt

echo 'top' >> $SR_Number/server_info.txt
top -n 2 -b |head -n 30 >> $SR_Number/server_info.txt

echo '==============================' >> $SR_Number/server_info.txt

echo 'Wait 2 seconds'
sleep 2

echo '==============================' >> $SR_Number/server_info.txt

echo 'top2' >> $SR_Number/server_info.txt
top -n 2 -b |head -n 30 >> $SR_Number/server_info.txt

echo '==============================' >> $SR_Number/server_info.txt

echo 'ls -l /opt/netiq/idm/apps/tomcat/conf' >> $SR_Number/server_info.txt
ls -l /opt/netiq/idm/apps/tomcat/conf >> $SR_Number/server_info.txt

echo 'end of file' >> $SR_Number/server_info.txt

# Copy Files
cp -R /opt/netiq/idm/apps/tomcat/conf/ $SR_Number/
cp -R /opt/netiq/idm/apps/tomcat/bin/ $SR_Number/
cp -R /opt/netiq/idm/apps/tomcat/logs/ $SR_Number/
cp /opt/netiq/idm/apps/osp/*.jks $SR_Number/
cp /opt/netiq/idm/apps/sspr/sspr_data/SSPRConfiguration.xml $SR_Number/sspr
cp /opt/netiq/idm/apps/sspr/sspr_data/logs/*.log $SR_Number/sspr
cp /opt/netiq/idm/postgres/data/postgresql.conf $SR_Number/postgres
cp /opt/netiq/idm/postgres/data/pg_hba.conf $SR_Number/postgres
cp /opt/netiq/idm/apps/sites/ServiceRegistry.json $SR_Number/sites/
cp /opt/netiq/idm/apps/sites/config.ini $SR_Number/sites/
cp /opt/netiq/idm/apps/sites/logs/* $SR_Number/sites/

tar -czvf $SR_Number/logs/install-logs.tgz /var/opt/netiq/idm/log/*

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
read -p "Enter your Identity Application host:port (i.e. server.com:443) " SERVER
# Continue with processing code
echo "If tcpdump is enabled, press CTRL+C to stop capture. Continue?  Y or N"
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
