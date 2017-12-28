#! /bin/bash

## Read the IP Address from a File

for i in `cat servers.txt`; do 

ping -c3 $i 

done 

sleep 3

## Ssh into the Server

user_name=root
password=password*9
set_of_Commands="pwd; ls"

## For Loop For SSh Connectivity

for j in `cat servers.txt` ; do 
{

  /usr/bin/expect << EOF
    spawn ssh $user_name@$j 
    expect \"Password:\"
    send \"$password\r\"
    `hostname`
        
EOF

#ssh -t ${user_name}@$j " $set_of_Commands "

}

done


