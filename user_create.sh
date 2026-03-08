#!/bin/bash

<<help
this is a shell script
to create users

help

read -p "Enter the username:" username
read -p "Enter the password:" password

echo "====== Creation of username completed ======="

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "====== Creation of username completed ======="

sudo userdel $username

echo "=======deletion of user completed==="

cat /etc/passwd | grep $username | wc | awk '{print $1}'

echo "as wc is 0 the user us deleted"

