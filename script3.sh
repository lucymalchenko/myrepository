#!/bin/bash

echo "Hi $name, this script audits your workstation."
echo "Please use sudo to run the script correcty."
sudo echo "Script output information about your workstation to file 'output_script_3.log'."
exec 1> output_script_3.1.log

echo "1.Uptime: "$(date)
echo "2.Current users: "
who
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "3.Recent logins: "
last | head -n 3
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "4.1.TOP-10 processes by RAM usage: "
ps -Ao user,pid,pcpu,pmem,start,time,command --sort=-pmem | head -n 10
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "4.2.TOP-10 processes by CPU usage: "
ps -Ao user,pid,pcpu,pmem,start,time,command --sort=-pcpu | head -n 10
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "5.Open UDP/TCP ports: "
ss -tulpn
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "6.Virtual Memory usage: "
free -t
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "7.Usage of disk space: "
df -H
