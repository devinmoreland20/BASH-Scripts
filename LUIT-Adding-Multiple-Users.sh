#!/bin/bash
#This is a script to add a new user to our server with a defualt home directory. 

if [ $# -eq 0 ]
then
  echo "Please enter at least one Username."
exit 1
fi

name=$@
 
getent passwd $@ > /dev/null

if [ $? -eq 0 ]; then
  echo "Users exist."
  echo "Exiting... Please try again with new username."

else
  echo "Creating new users..."
sleep 1

for i in $@ ; do sudo useradd -m $i ; done

  echo "Users Created"
fi

