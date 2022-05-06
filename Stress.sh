#!/bin/bash
sudo amazon-linux-extras install epel -y
sudo yum install stress -y 
stress --cpu 1


#This will install the stress command and run it. You will need to chmod 744 to excute. 
#run cat /proc/cpuinfo | grep processor |wc -1 to check how many CPU processors you have. 
