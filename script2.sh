#!/bin/bash

echo "Hi "$name", this script shows you such system information as: its version, uptime, operating system, kernel, processor name, firewall configuration, etc. "

sudo echo "Script output information about your OS to file 'output_script_2.txt'."
exec 1> output_script_2.txt

echo -e "Hostname:\t\t"`hostname`
echo"------------------------------------------------------------------------------------------------------------------------------------------------------"

echo -e "Operating System:\t"`hostnamectl | grep "Operating System" | cut -d ' ' -f5-`
echo"------------------------------------------------------------------------------------------------------------------------------------------------------"

echo "KERNEL INFORMATION: "$(uname -a)
echo "------------------------------------------------------------------------------------------------------------------------------------------------------"

echo "NETWORK INFORMATION: "
echo "COMMAND ip addr: "
ip addr
echo
echo "------------------------------------------------------------------------------------------------------------------------------------------------------"

echo "FIREWALL CONFIGURATION: "
sudo ufw status verbose
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"

echo "HARDWARE INFORMATION:"
sudo lshw -short
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"

echo "OUTPUT OF FILES: (Hint: if there is no output from the file, then all the lines in the file are commented out or the file is empty)"
echo "Output /etc/resolv.conf:"
cat /etc/resolv.conf | grep -v "#" | grep -v "^$"
echo
echo "Output /etc/sysctl.conf:"
cat /etc/sysctl.conf | grep -v "#" | grep -v "^$"
