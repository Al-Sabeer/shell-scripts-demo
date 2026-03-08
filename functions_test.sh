#!/bin/bash

<<info
This is a example of function test

info

function create_user {
read -p "Enter the username:" Username
sudo useradd -m $username

echo "user added successfully"
}
create_user
create_user
