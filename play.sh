#!/bin/bash

#Created by: Ribeiro
#Date: 24th May 2024
#Program: "Play_Music"
clear
# Verify if mpv is installed...
if ! command -v mpv &> /dev/null
then
    echo -e "mpv is not installed!\n
   [+] 'Installing mpv'... [+]"
   pkg install mpv -y
fi

default="music/toxic.mp3"
green=$(echo -e "\e[3;32m")
reset=$(echo -e "\e[0m")

get_filename()
{
	echo "$(basename "$1")"
}

if [ -z "$1" ]
then
    echo "Usage: $0 <PATH_TO_THE_MUSIC>"
    echo "Playing default music...!"
    sleep 1
    mpv $default
fi

if [ ! -f "$1" ]
then
    echo "Music file does not found!: $1"
    exit 1
else
	music_title=$(get_filename $1) 
	echo -e "We are playing ... ${green}$music_title ${reset}\n
	thanks for using this program!\n\n"
	sleep 1
	mpv "$1"
fi
