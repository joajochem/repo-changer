#!/bin/bash

echo Hello $user,
echo Welke Repo wil je gebruiken?
echo school---------- = 1
echo niet school ---- = 2
echo exit ----------- = 3

read choice

option1=1
option2=2

#Niet school
rm "/etc/apt/sources.list"
if [ $choice == $option1]:
then
    echo een repo-server wordt ingesteld: ftp.debian.org
    cat "/etc/apt/sources.list" > "/etc/apt/sources.list"
    echo "deb http://ftp.nl.debian.org/debian stretch main" > "/etc/apt/sources.list"
    apt update
    echo je kan weer software installeren!
#School
elif [ $choice == $option2]:
then
    echo repo-server van school wordt ingesteld: 10.203.216.40!
    cat "/etc/apt/sources.list" > "/etc/apt/sources.list"
    echo "deb http://10.203.216.40/debian stretch main" > "/etc/apt/sources.list"
    apt update
    echo je kan weer software installeren!
fi




