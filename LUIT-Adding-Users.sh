#!/bin/bash
#This is a script to add a new user to our server with a defualt home directory. 

echo -n "Enter new username:"  
read name

getent passwd $name > /dev/null
 
if [ $? -eq 0 ]; then
	echo "User exist."
	echo "Exiting... Please try again with new username."

else
	echo "Creating new user..."
sleep 1
sudo useradd -m $name
	echo "Created user $name!"
fi

#Goal is to make this allow me to keep entering username without having to rerun the script. 
