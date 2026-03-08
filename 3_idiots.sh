#!/bin/bash

hero="rancho"
villain="virus"


#(user defined variables)

echo "3 idiots ka hero hai $hero"

echo "3 idiots ka villain hai $villain"

#shell/environment variables bhi hote hai ( pre defined)

#command is printenv - to display the pre defined variables

echo "current logged in user $USER"

#user input
read -p "Rancho ka poora naam kya tha?" fullname

echo "Rancho ka poora nam $fullname tha"

#arguments

#3_idiots raju farhan rancho

echo "movie name: $0"

echo "first idiot: $1"

echo "second idiot: $2"

echo "third idiot: $3"

echo "hence the 3 idiots are: $@"

