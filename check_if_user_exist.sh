#!/bin/bash

<<info
Ths shell scripts check if user exists
info

read -p "Enter the username" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print 1}')

if [ $count == 0 ];
then
	echo "user does exist"
else
	echo "user does not exists"
fi	


